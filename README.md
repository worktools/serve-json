
Serve JSON
----

### Usage

![](https://img.shields.io/npm/v/@jimengio/serve-json.svg?style=flat-square)

```bash
yarn global add @jimengio/serve-json
serve-json config.edn
```

Example of `config.edn`:

```cirru
{
  :port 7800
  :routes [
    {
      :path "home"
      :get {:type :file, :file "home.json"}
    }
    {
      :path "plants/:plant-id"
      :get {:type :file, :file "plant-default.json"}
      :post {:type :file, :file "ok.json"}
      :next [
        {
          :path "overview"
          :get {:type :file, :file "overview.json"}
        }
        {
          :path "materials/:material-id"
          :get {:type :file, :file "materials.json"}
          :next [
            {
              :path "events"
              :get {:type :file, :file "events.json"}
              :delete {:code 202, :type :file, :file "ok.json"}
            }
          ]
        }
      ]
    }
  ]
}
```

JSON and [Cirru EDN](https://github.com/Cirru/cirru-edn) are also supported:

```bash
serve-json config.json

# also
serve-json config.cirru
```

### License

MIT
