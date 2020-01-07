
Serve JSON
----

### Usage

![](https://img.shields.io/npm/v/@jimengio/serve-json.svg?style=flat-square)

```bash
yarn global add @jimengio/serve-json
serve-json config.edn
```

```cirru
{}
  :routes $ []
    {}
      :path |plant/:plant-id
      :get $ {} (:type :file) (:file |plant-default.json)
      :post $ {} (:type :file) (:file |ok.json)
      :next $ []
        {}
          :path |overview
          :get $ {} (:type :file) (:file |overview.json)
        {}
          :path |materials/:material-id
          :get $ {} (:type :file) (:file |materials.json)
          :next $ []
            {}
              :path |events
              :get $ {} (:type :file) (:file |events.json)
              :delete $ {} (:status 202) (:type :file) (:file |ok.json)
```

### License

MIT
