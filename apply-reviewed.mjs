import assert from 'node:assert/strict';
import {execFileSync,spawnSync} from 'node:child_process';
import {mkdirSync,readFileSync,writeFileSync} from 'node:fs';
const run=(...a)=>execFileSync('calcit',a,{encoding:'utf8',maxBuffer:24e6,stdio:['ignore','pipe','pipe']});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const blob=p=>execFileSync('git',['hash-object',p],{encoding:'utf8'}).trim();
mkdirSync('acceptance',{recursive:true});assert.equal(run('-v').trim(),'0.30.1');writeFileSync('acceptance/agent-contract.txt',run('docs','agents','--contract'));
assert.equal(blob('calcit.cirru'),'31379b47f6e29bd2c2a97c174f768a24f01fd718');assert.equal(blob('config/calcit-quality.cirru'),'ad2b7a6bcd096f95b474c94918f1a31721944ea5');
const before=norm(JSON.parse(readFileSync('reviewed.json','utf8'))),expected=structuredClone(before),ops=[],types=[],counts={};
assert.equal(before.length,36);assert.equal(before.reduce((n,d)=>n+d.tests.length,0),2);
const config=q('config'),namespaces=q('ns').namespaces.map(n=>q('ns',n));
const core=['count','&core-enum-methods','option:unwrap-or'].map(n=>q('def','calcit.core/'+n));writeFileSync('acceptance/core-contracts.json',JSON.stringify(core,null,2));
assert.ok(core[0].doc.includes('Countable'));assert.ok(core[1].code[2].some(x=>Array.isArray(x)&&x[1]===':count'&&x[2]==='&enum:count'));
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote',';','comment','defmacro'].includes(x[0]))return x;
  if(['merge','option:unwrap-or','count'].includes(x[0])){
    const r=spawnSync('calcit',['query','type-at',id,'--path','@'+[...path,1].join('.'),'--format','json'],{encoding:'utf8',maxBuffer:24e6});assert.equal(r.status,0);
    types.push({id,path,tree:structuredClone(x),evidence:JSON.parse(r.stdout),stderr:r.stderr});
    if(x[0]==='count'){assert.equal(id,'app.router/check-method!');assert.equal(x[1],'value');counts.retainedEnumCount=(counts.retainedEnumCount||0)+1;return x;}
    const old=x[0];counts[old]=(counts[old]||0)+1;
    if(old==='merge'&&x.length===2){assert.equal(x[1],'cors-header');assert.deepEqual(JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree,x);ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(x[1])]);counts.identityMerge=(counts.identityMerge||0)+1;return x[1];}
    assert.equal(JSON.parse(run('tree','show',id,'--path','@'+[...path,0].join('.'),'--format','json')).tree,old);
    ops.push(['tree','replace',id,'--path','@'+[...path,0].join('.'),'--input-format','json-ast','--code',JSON.stringify(old==='merge'?'.merge':'.unwrap-or'),'--expect','quote '+old]);x[0]=old==='merge'?'.merge':'.unwrap-or';
  }
  return x.map((v,i)=>walk(v,[...path,i],id));
}
for(const d of expected){assert.deepEqual(q('def',d.id),before.find(x=>x.id===d.id));d.code=walk(d.code,[],d.id);}
assert.deepEqual(counts,{'option:unwrap-or':11,merge:9,identityMerge:1,retainedEnumCount:3});assert.equal(ops.length,20);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));writeFileSync('acceptance/receiver-types.json',JSON.stringify(types,null,2));writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/transaction-preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/transaction-applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const actual=[];for(const ns of namespaces){const names=run('query','defs',ns.namespace).split('\n').filter(x=>/^  \S/.test(x)).map(x=>x.trim().split(' ')[0]);assert.equal(names.length,ns.definition_count);for(const n of names)actual.push(q('def',`${ns.namespace}/${n}`));}
assert.deepEqual(actual,expected);assert.deepEqual(q('config'),config);assert.deepEqual(q('ns').namespaces.map(ns=>q('ns',ns)),namespaces);assert.equal(blob('config/calcit-quality.cirru'),'ad2b7a6bcd096f95b474c94918f1a31721944ea5');
writeFileSync('acceptance/after.json',JSON.stringify(actual,null,2));writeFileSync('acceptance/config.json',JSON.stringify(config,null,2));writeFileSync('acceptance/namespaces.json',JSON.stringify(namespaces,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob('calcit.cirru'));
writeFileSync('acceptance/summary.json',JSON.stringify({definitions:36,attachedTests:2,operations:20,counts,preserved:'All operands/defaults/HTTPheaders/config/FFI/trustboundaries/metadata/tests/ns/config/baseline. Enum count remains valid Countable public API including tag, not List length.'},null,2));
