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

使用 Calcit 0.27.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0。安装依赖后编译 CLI：

```bash
caps --strict --ci
yarn install --immutable
calcit
node --test test/cli-argv.test.mjs test/delay.test.mjs
```

入口明确使用 JavaScript/Node 目标。`js-out/` 是构建产物，不提交到 Git，但保留在 npm 包中供 CLI 运行。本项目没有前端页面，不配置 COS/CDN；原 npm 发版流程保留，升级 PR 不自动发布。

### License

MIT
