## Serve JSON

### Calcit 0.41.0 升级

请配对使用 Calcit CLI 和 `@calcit/procs` 0.41.0，按 `deps.cirru` 安装依赖并重新生成 JS。
现有 JSON、JSON5 和 Cirru EDN 配置、嵌套路由及响应格式继续适用。

路由匹配区分匹配和未匹配两种结果，首页路由列表使用具体的路径和方法字段。
这些内部类型在 HTTP 输出处按原有结构序列化。

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
{} (:port 7800) (:fallback-host nil)
  :routes $ []
    {} (:path |home)
      :get $ {} (:type :file) (:file |home.json)
    {} (:path |plants/:plant-id)
      :get $ {} (:type :file) (:file |plant-default.json)
      :post $ {} (:type :file) (:file |ok.json)
      :next $ []
        {} (:path |overview)
          :get $ {} (:type :file) (:file |overview.json)
        {} (:path |materials/:material-id)
          :get $ {} (:type :file) (:file |materials.json)
          :next $ [] $ {} (:path |events)
            :get $ {} (:type :file) (:file |events.json)
            :delete $ {} (:code 202) (:type :file) (:file |ok.json)
```

</details>

#### `:fallback-host`

When `:fallback-host` is specified, it will be used as a default proxy target when no config path is matched.

### 开发

使用配对的正式 Calcit / `@calcit/procs` 0.37.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0。正式配对的完整验收在 Linux CI 中执行；本地先前 alpha 配对结果不作为正式版验收。npm 与模块版本统一为待发布的 0.0.14，本轮不发布。新解析 npm 包至少发布60分钟，无单包例外；原锁文件按 immutable 安装。安装依赖后检查并编译 CLI：

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit analyze quality --baseline config/calcit-quality.cirru
calcit test --require-match --summary-only
calcit js
node --test test/cli-argv.test.mjs test/delay.test.mjs
```

Action 使用与原已审查提交对应的精确正式 tag，按既定维护策略接受 tag 可移动风险；原只读权限和不保留 checkout 凭据保持。质量命令在0.35.1已标记废弃，但本轮仍保留原质量基线门禁，不因迁移而删除或放宽。

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
