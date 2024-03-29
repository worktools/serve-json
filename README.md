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

### License

MIT
