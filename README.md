## Serve JSON

### 当前候选 0.0.14：正式 Calcit 0.31.0

使用者影响：CLI/runtime 配对正式 **0.31.0**，直接依赖更新为已发布的 Skir **0.0.34**、JS-FFI **0.2.7**；传递依赖包含 Router **0.9.0-alpha.3** 与 Respo **0.17.0-alpha.4**，仍有预发布模块。请重新安装完整依赖图并生成 JS。

配置格式、HTTP 状态码、CORS、文件监听、代理行为和原监听地址不变。配置检查中的四处 `.each` 改为保留元素类型的 `.foldl`，以 Unit 累积，保持原顺序、校验与异常传播；不把回调参数改为 Dynamic，也不新增运行时强转。相关上游合同问题见 [Calcit #2449](https://github.com/calcit-lang/calcit/issues/2449)。Enum 的三处 `count` 保留含 tag 的 Countable 语义。

原质量基线、附带测试、Node 回归和 CI 不变；本地完整 strict、两项附带测试、四项 Node 测试与 24 项合成回环 HTTP 验收通过。Chalk/http-proxy 两处 FFI trust 边界仍保留，不宣称全部类型债务清零。不增加永久验收脚本或编译器改写规则。

0.0.14 仍是未发布候选，本轮不创建 release/npm 包、不部署或重启服务。此项目没有前端资源，不添加 COS/CDN 配置。

### Usage

![](https://img.shields.io/npm/v/@jimengio/serve-json.svg?style=flat-square)

```bash
yarn global add @worktools/serve-json
serve-json config.json
```

Supported config files are JSON, JSON5, Cirru EDN.

<details><summary>
Example of `config.json`.
</summary>

```json
{
  "port": 7800,
  "fallback-host": null,
  "routes": [
    {
      "path": "home",
      "get": {
        "type": "file",
        "file": "home.json"
      }
    },
    {
      "path": "plants/:plant-id",
      "get": {
        "type": "file",
        "file": "plant-default.json"
      },
      "post": {
        "type": "file",
        "file": "ok.json"
      },
      "next": [
        {
          "path": "overview",
          "get": {
            "type": "file",
            "file": "overview.json"
          }
        },
        {
          "path": "materials/:material-id",
          "get": {
            "type": "file",
            "file": "materials.json"
          },
          "next": [
            {
              "path": "events",
              "get": {
                "type": "file",
                "file": "events.json"
              },
              "delete": {
                "code": 202,
                "type": "file",
                "file": "ok.json"
              }
            }
          ]
        }
      ]
    }
  ]
}
```

</details>

<details><summary>
Example of `config.cirru`.
</summary>

```cirru
{}
  :port 7800
  :fallback-host nil
  :routes $ []
    {}
      :path "|home"
      :get $ {}
        :type :file
        :file "|home.json"
    {}
      :path "|plants/:plant-id"
      :get $ {}
        :type :file
        :file "|plant-default.json"
      :post $ {}
        :type :file
        :file "|ok.json"
      :next $ []
        {}
          :path "|overview"
          :get $ {}
            :type :file
            :file "|overview.json"
        {}
          :path "|materials/:material-id"
          :get $ {}
            :type :file
            :file "|materials.json"
          :next $ []
            {}
              :path "|events"
              :get $ {}
                :type :file
                :file "|events.json"
              :delete $ {}
                :code 202
                :type :file
                :file "|ok.json"
```

</details>

#### `:fallback-host`

When `:fallback-host` is specified, it will be used as a default proxy target when no config path is matched.

### 开发

使用配对的正式 Calcit / `@calcit/procs` 0.31.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0。正式配对的完整验收在 Linux CI 中执行；本地先前 alpha 配对结果不作为正式版验收。npm 与模块版本统一为待发布的 0.0.14，本轮不发布。安装依赖后检查并编译 CLI：

```bash
caps --strict --ci
yarn install --immutable
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit analyze quality --baseline config/calcit-quality.cirru
calcit test --require-match --summary-only
calcit js
node --test test/cli-argv.test.mjs test/delay.test.mjs
```

入口明确使用 JavaScript/Node 目标。`js-out/` 是构建产物，不提交到 Git，但保留在 npm 包中供 CLI 运行。本项目没有前端页面，不配置 COS/CDN；原 npm 发版流程保留，升级 PR 不自动发布。

### 历史：已合并的 0.0.14 源码迁移

- 继续支持 JSON、JSON5 和 Cirru EDN 配置、Map/Enum 方法配置、嵌套路由、状态码、延迟、CORS 及 fallback proxy。可选字段的缺失或 nil 默认值保留，未知键仍只告警。
- 无效配置不再仅打印验证错误后继续启动：启动时拒绝无效配置，热更新失败时保留最后一次有效配置。修正文件后可再次加载。
- 端口必须是 0–65535 的整数；保留端口 0 的随机端口用途，缺失或 nil 时仍默认 7800。负数、小数和超出范围的值在配置解码时拒绝，不再等到监听时才报错。
- 退役已归档的 Lilac 依赖，改用应用自身的配置解码和字段检查；不复制通用验证框架。配置文件监听改为 Node `fs.watchFile`，保持 100ms 轮询，只监听实际使用的单个文件，不再依赖 Gaze 的目录/glob 监听。
- 内部配置使用具名 Struct，路由及方法的外部数据仍保留原 Map/Enum 协议。Chalk 和 http-proxy 的可调用模块对象各保留一处显式 FFI trust 边界，不冒称运行时结构检查已证明函数属性合同。
- 本轮不发布 npm 包、不部署服务，不改变现有监听 host 或服务器路径。
- 经逐项审阅批准，质量基线仅将新增额度归属到 chalk-host、child-routes、check-method!、decode-config 四个边界，并扣除旧位置已消除的额度。全局上限收紧为 unsafe 2、codeNil 7、schemaDynamic 8、typeNotFull 9、unresolved 15；其他定义预算不放宽。保留原门禁，不额外添加验证脚本。

### License

MIT
