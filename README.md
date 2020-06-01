
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
  :fallback-host nil
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

Besides EDN, JSON, [CSON](https://github.com/bevry/cson), YAML and [Cirru EDN](https://github.com/Cirru/cirru-edn) are also supported([Comparison of data formats supported #5](https://github.com/jimengio/serve-json/issues/5)):

```bash
serve-json config.json

# also
serve-json config.cirru

# also
serve-json config.cson

# also
serve-json config.yaml
```

#### `:fallback-host`

When `:fallback-host` is specified, it will be used as a default proxy target when no config path is matched.

### License

MIT
