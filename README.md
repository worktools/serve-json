## Serve JSON

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

使用配对的 Calcit / `@calcit/procs` 0.30.1-alpha.5、caps 0.1.1、Node.js 24 和 Yarn 4.18.0。0.30.1 正式版的 CLI/npm 配对发布尚未完成，因此暂不只升级其中一端。安装依赖后检查并编译 CLI：

```bash
caps --strict --ci
yarn install --immutable
calcit --check-only --all-defs
calcit --check-only --ns app.config --ns app.main --ns app.path --ns app.router --ns app.schema --ns app.util --summary-only
calcit analyze quality --baseline config/calcit-quality.cirru
calcit test --require-match --summary-only
calcit js
node --test test/cli-argv.test.mjs test/delay.test.mjs
```

入口明确使用 JavaScript/Node 目标。`js-out/` 是构建产物，不提交到 Git，但保留在 npm 包中供 CLI 运行。本项目没有前端页面，不配置 COS/CDN；原 npm 发版流程保留，升级 PR 不自动发布。

### 本轮迁移对使用者的影响

- 继续支持 JSON、JSON5 和 Cirru EDN 配置、Map/Enum 方法配置、嵌套路由、状态码、延迟、CORS 及 fallback proxy。可选字段的缺失或 nil 默认值保留，未知键仍只告警。
- 无效配置不再仅打印验证错误后继续启动：启动时拒绝无效配置，热更新失败时保留最后一次有效配置。修正文件后可再次加载。
- 端口必须是 0–65535 的整数；保留端口 0 的随机端口用途，缺失或 nil 时仍默认 7800。负数、小数和超出范围的值在配置解码时拒绝，不再等到监听时才报错。
- 退役已归档的 Lilac 依赖，改用应用自身的配置解码和字段检查；不复制通用验证框架。配置文件监听改为 Node `fs.watchFile`，保持 100ms 轮询，只监听实际使用的单个文件，不再依赖 Gaze 的目录/glob 监听。
- 内部配置使用具名 Struct，路由及方法的外部数据仍保留原 Map/Enum 协议。Chalk 和 http-proxy 的可调用模块对象各保留一处显式 FFI trust 边界，不冒称运行时结构检查已证明函数属性合同。
- 本轮不发布 npm 包、不部署服务，不改变现有监听 host 或服务器路径。

### License

MIT
