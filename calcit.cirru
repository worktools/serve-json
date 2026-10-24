
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |skir/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.config $ %{} 'FileEntry
      :defs $ {}
        '*configs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *configs (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'app.schema/Config
        'ChalkHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ChalkHost
            .red $ :: 'Fn $ {}
              :args $ [] 'app.config/ChalkHost 'String
              :return 'String
            .gray $ :: 'Fn $ {}
              :args $ [] 'app.config/ChalkHost 'String
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'FileStatsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileStatsHost (:mtime-ms 'Number) (:ctime-ms 'Number)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ :: 'Trait
        'FileWatchHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileWatchHost
            .watch-file! $ :: 'Fn $ {}
              :args $ [] 'app.config/FileWatchHost 'String 'JsObject $ :: 'Fn
                {}
                  :args $ [] 'app.config/FileStatsHost 'app.config/FileStatsHost
                  :return 'Unit
              :return 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ :: 'Trait
        'Json5ParserHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Json5ParserHost
            .parse $ :: 'Fn $ {}
              :args $ [] 'app.config/Json5ParserHost 'String
              :return 'Dynamic
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'chalk-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn chalk-host () (unsafe-coerce chalk 'app.config/ChalkHost)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.config/ChalkHost)
            :args $ []
            :features $ #{} :js-ffi
        'detect-config-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-config-file! ()
            if (node/file-exists? |config.cirru) (Option :some |config.cirru) (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :return $ :: 'Option 'String
        'load-config! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-config! ()
            let
                selected $ match (node/argv-at 2)
                  (:some path) (Option :some path)
                  (:none) (detect-config-file!)
              match selected
                (:none)
                  do (println "|No config file: config.cirru") false
                (:some config-path)
                  if-not (node/file-exists? config-path)
                    do (println "|Not found:" config-path) false
                    do
                      println "|Running at" $ node/cwd
                      if (load-config-from-file! config-path)
                        do
                          .watch-file! (js-cast fs 'app.config/FileWatchHost) config-path
                            js-object $ :interval 100
                            fn (current previous)
                              hint-fn $ {}
                                :args $ [] 'app.config/FileStatsHost 'app.config/FileStatsHost
                                :return 'Unit
                                :features $ #{} :js-ffi
                              when
                                or
                                  not= (.-mtime-ms current) (.-mtime-ms previous)
                                  not= (.-ctime-ms current) (.-ctime-ms previous)
                                load-config-from-file! config-path
                              , &unit
                          , true
                        , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
        'load-config-from-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-config-from-file! (config-path)
            try
              let
                  ext $ node/path-extname config-path
                  content $ node/read-text! config-path
                  raw $ match ext
                    |.cirru $ parse-cirru-edn content
                    |.json $ -> content js/JSON.parse to-calcit-data tagging-edn
                    |.json5 $ ->
                      .parse (js-cast JSON5 'app.config/Json5ParserHost) content
                      , to-calcit-data tagging-edn
                    _ $ raise $ str "|Unknown config file: " config-path
                match (decode-config raw)
                  (:ok config)
                    do
                      reset! *configs $ Option :some config
                      println "|Loaded config from" config-path
                      , true
                  (:err message)
                    do (eprintln message) false
              fn (error)
                eprintln $ str error
                , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require (|chalk :default chalk) (|json5 :default JSON5)
            app.router :refer $ decode-config
            app.schema :as schema
            js-ffi.node :as node
            |node:fs :default fs
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*proxy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *proxy (create-proxy!)
          :examples $ []
          :schema $ :: 'Ref 'app.main/ProxyHost
        'HttpProxyFactoryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HttpProxyFactoryHost
            .create-proxy! $ :: 'Fn $ {}
              :args $ [] 'app.main/HttpProxyFactoryHost 'JsObject
              :return 'app.main/ProxyHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :create-proxy! |createProxy
          :schema $ :: 'Trait
        'ProxyHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ProxyHost
            .web $ :: 'Fn $ {}
              :args $ [] 'app.main/ProxyHost 'js-ffi.node/NodeRequestHost 'js-ffi.node/NodeServerResponseHost 'JsObject
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'create-proxy! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-proxy! ()
            .create-proxy! (unsafe-coerce http-proxy 'app.main/HttpProxyFactoryHost) (js-object)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.main/ProxyHost)
            :args $ []
            :features $ #{} :js-ffi
        'handle-request! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn handle-request! (req res)
            let
                config $ .unwrap-or @*configs schema/default-config
                routes $ :routes config
                fallback-host $ :fallback-host config
                request-url $ :url req
                request-method $ :method req
                original-request $ .unwrap $ :original-request req
                pathname $ .unwrap-or
                  first $ split request-url |?
                  , |
                segments $ split-path pathname
                rule-result $ find-match-rule segments routes
                matched-rule $ .unwrap-or
                  decode-map-as (get rule-result :rule)
                    :: 'Option $ :: 'Map 'Tag 'Dynamic
                  decode-map-as ({}) (:: 'Map 'Tag 'Dynamic)
                rule-ok? $ .unwrap-or
                  decode-map-as (get rule-result :ok?) (:: 'Option 'Bool)
                  , false
                info $ .unwrap-or (get matched-rule request-method) nil
                cors-header $ {} (:Access-Control-Allow-Credentials |true) (:Access-Control-Allow-Methods |PUT,POST,DELETE)
                  :Access-Control-Allow-Origin $ .unwrap-or (node/request-header original-request |origin) |
                  :Access-Control-Allow-Headers |Content-Type
              ; println "|find rule" pathname rule-result info request-method
              cond
                  = pathname |/
                  {} (:code 200) (:message |OK)
                    :headers $ .merge cors-header schema/json-header
                    :body $ js/JSON.stringify
                      to-js-data $ {}
                        :message $ str "|This is a data mocking server."
                        :choices $ list-paths routes
                      , nil 2
                (= :options request-method)
                  {} (:code 200) (:message |OK) (:headers cors-header) (:body |OK)
                (= pathname |/favicon.ico)
                  {} (:code 301)
                    :headers $ {} $ :Location |http://cdn.tiye.me/logo/jimeng-360x360.png
                (or (not rule-ok?) (nil? info))
                  if (not= fallback-host |)
                    do
                      println $ .gray (chalk-host) (str "|proxy to " fallback-host "| " pathname)
                      try
                        .web @*proxy original-request res $ js-object $ :target fallback-host
                        fn (err)
                          {} (:code 500) (:message "|Failed to access fallback host")
                            :headers $ .merge cors-header schema/json-header
                            :body err
                      , :effect
                    do (println 404 pathname)
                      {} (:code 400) (:message "|Not matching")
                        :headers $ .merge cors-header schema/json-header
                        :body $ js/JSON.stringify
                          js-object
                            :message $ str "|No matching path for " pathname
                            :reason $ to-js-data rule-result
                          , nil 2
                (and (map? info) (file? (.unwrap-or (get info :type) nil)))
                  fn (send!)
                    hint-fn $ {}
                      :args $ [] $ :: 'Fn
                        {}
                          :args $ [] 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    let
                        mock-path $ .unwrap-or (get info :file) |
                        response-code $ .unwrap-or (get info :code) 200
                        response-delay $ .unwrap-or (get info :delay) 0
                      respond-with-file! (decode-map-as mock-path 'String) pathname response-code response-delay cors-header send!
                (enum? info)
                  match info
                    (:file code mock-path)
                      fn (send!)
                        hint-fn $ {}
                          :args $ [] $ :: 'Fn
                            {}
                              :args $ [] 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        respond-with-file! (decode-map-as mock-path 'String) pathname code 0 cors-header send!
                    (:file code mock-path delay)
                      fn (send!)
                        hint-fn $ {}
                          :args $ [] $ :: 'Fn
                            {}
                              :args $ [] 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        respond-with-file! (decode-map-as mock-path 'String) pathname code delay cors-header send!
                    _ $ do (eprintln 400 info)
                      {} (:code 400) (:message "|Unknown config")
                        :headers $ .merge cors-header schema/json-header
                        :body $ js/JSON.stringify
                          js-object
                            :message $ str "|No matching path for " pathname
                            :reason $ to-js-data info
                          , nil 2
                true $ do (println "|Bad result for rule" pathname request-method info)
                  {} (:code 400) (:message "|Unknown request")
                    :headers $ .merge cors-header schema/json-header
                    :body $ js-object (:code 400) (:message "|Unknown rule")
                      :rule $ to-js-data matched-rule
                      :info $ to-js-data info
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'skir.schema/Request 'js-ffi.node/NodeServerResponseHost
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            when-not (load-config!) (node/exit! 1)
            skir/create-server! handle-request! $ Option :some $ {}
              :port $ :port $ .unwrap-or @*configs schema/default-config
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'js-ffi.node/NodeServerHost)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |Reloaded.)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'respond-with-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn respond-with-file! (mock-path pathname code delay cors-header send!)
            let
                response-code $ decode-map-as (or code 200) 'Number
                response-delay $ decode-map-as (or delay 0) 'Number
              fs/access mock-path $ fn (err)
                hint-fn $ {}
                  :args $ [] $ :: 'JsNullish 'JsObject
                  :return 'Unit
                  :features $ #{} :js-ffi
                if (js-present? err)
                  do (println "|Need file" mock-path)
                    send! $ {} (:code 404) (:message "|Unknown request")
                      :headers $ .merge cors-header schema/html-header
                      :body $ str mock-path "| not found"
                  do
                    println $ .gray (chalk-host) (str |sending "| " mock-path "| to " pathname)
                    delay! response-delay $ fn ()
                      fs/readFile mock-path |utf8 $ fn (err content)
                        try
                          send! $ {} (:code response-code) (:message |OK)
                            :headers $ .merge cors-header schema/json-header
                            :body $ js/JSON.stringify
                              .parse (js-cast JSON5 'app.config/Json5ParserHost) (decode-map-as content 'String)
                              , nil 2
                          fn (e)
                            shared/console-error! $ str e
                            send! $ {} (:code 500) (:message |Error)
                              :headers $ .merge cors-header schema/json-header
                              :body $ js/JSON.stringify
                                js-object (:message |Error)
                                  :msg $ str e
                                  :error e
                                , nil 2
                      , &unit
                , &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String 'String 'Dynamic 'Dynamic (:: 'Map 'Tag 'String)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (skir.core :as skir) (|node:fs :as fs) (|chalk :default chalk)
            app.util :refer $ file? split-path delay!
            app.schema :as schema
            app.path :refer $ find-match-rule list-paths
            app.config :refer $ *configs load-config! chalk-host
            |http-proxy :default http-proxy
            |json5 :default JSON5
            js-ffi.node :as node
            js-ffi.shared :as shared
    'app.path $ %{} 'FileEntry
      :defs $ {}
        'RegExpHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegExpHost
            .test $ :: 'Fn $ {}
              :args $ [] 'app.path/RegExpHost 'String
              :return 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'child-routes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn child-routes (rule)
            match (get rule :next)
              (:none) ([])
              (:some value)
                if (nil? value) ([])
                  decode-map-as value $ :: 'List $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'T
            :generics $ [] 'T
            :return $ :: 'List $ :: 'Map 'Tag 'Dynamic
        'find-match-rule $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-match-rule (segments rules)
            let
                current-match $ loop
                    xs rules
                  if (empty? xs) (Option :none)
                    let
                        cursor $ .unwrap $ first xs
                        cursor-path $ decode-map-as
                          .unwrap-or (get cursor :path) |
                          , 'String
                        result $ match-path segments $ split-path cursor-path
                      if
                        .unwrap-or
                          decode-map-as (get result :matches?) (:: 'Option 'Bool)
                          , false
                        Option :some $ assoc result :rule cursor
                        recur $ rest xs
              match current-match
                (:none)
                  {} (:ok? false) (:segments segments)
                    :choices $ map rules $ fn (r)
                      decode-map-as
                        .unwrap-or (get r :path) |
                        , 'String
                (:some matched)
                  let
                      matched-rule $ decode-map-as
                        .unwrap-or (get matched :rule) ({})
                        :: 'Map 'Tag 'Dynamic
                      remaining-segments $ decode-map-as
                        .unwrap-or (get matched :rest) ([])
                        :: 'List 'String
                      next-rules $ child-routes matched-rule
                    if (empty? remaining-segments)
                      {} (:ok? true) (:rule matched-rule)
                      recur remaining-segments next-rules
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'String)
              :: 'List $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'letter-number-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn letter-number-pattern ()
            js-cast (new js/RegExp |\{[\w\d\-]+\}) 'app.path/RegExpHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.path/RegExpHost)
            :args $ []
            :features $ #{} :js-ffi
        'list-paths $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn list-paths (routes)
            -> routes $ mapcat $ fn (rule)
              hint-fn $ {}
                :args $ [] $ :: 'Map 'Tag 'Dynamic
                :return $ :: 'List $ :: 'Map 'Tag 'Dynamic
              concat
                [] $ {}
                  :path $ decode-map-as
                    .unwrap-or (get rule :path) |
                    , 'String
                  :methods $ &set:to-list $ exclude (keys rule) :path :next
                ->
                  list-paths $ child-routes rule
                  map $ fn (x)
                    let
                        parent-path $ decode-map-as
                          .unwrap-or (get rule :path) |
                          , 'String
                        child-path $ decode-map-as
                          .unwrap-or (get x :path) |
                          , 'String
                      {}
                        :path $ str parent-path |/ child-path
                        :methods $ .unwrap-or (get x :methods) ([])
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List (:: 'Map 'Tag 'Dynamic)
            :return $ :: 'List $ :: 'Map 'Tag 'Dynamic
        'match-path $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn match-path (segments rule-path) (; println |matching segments rule-path)
            if (empty? rule-path)
              {} (:matches? true) (:rest segments)
              let
                  segment $ .unwrap-or (first segments) |
                  rule-segment $ .unwrap-or (first rule-path) |
                cond
                    empty? segments
                    {} (:matches false) (:rest segments) (:rest-rule rule-path)
                  (= segment rule-segment)
                    recur (rest segments) (rest rule-path)
                  (or (starts-with? rule-segment |:) (.test (letter-number-pattern) rule-segment))
                    recur (rest segments) (rest rule-path)
                  true $ {} (:matches? false) (:rest segments) (:rest-rule rule-path)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'String) (:: 'List 'String)
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.path
          :require $ app.util :refer $ split-path
    'app.router $ %{} 'FileEntry
      :defs $ {}
        'check-keys! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn check-keys! (data allowed)
            let
                extra $ difference (keys data) allowed
              when-not (empty? extra) (eprintln "|Unknown configuration keys:" extra)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'Map 'Tag 'T) (:: 'Set 'Tag)
            :generics $ [] 'T
        'check-method! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn check-method! (value)
            cond
                nil? value
                , &unit
              (map? value)
                let
                    data $ decode-map-as value $ :: 'Map 'Tag 'Dynamic
                  check-keys! data $ #{} :type :file :code :delay
                  when-not
                    file? $ .unwrap $ get data :type
                    raise "|method.type must be file"
                  decode-map-as
                    .unwrap $ get data :file
                    , 'String
                  .each ([] :code :delay)
                    fn (key)
                      hint-fn $ {}
                        :args $ [] 'Tag
                        :return 'Unit
                      match (get data key)
                        (:none) &unit
                        (:some item)
                          when (non-nil? item) (decode-map-as item 'Number)
                      , &unit
                  , &unit
              (enum? value)
                do
                  when-not
                    or
                      = (count value) 3
                      = (count value) 4
                    raise "|method Enum must contain tag, code, file and optional delay"
                  decode-map-as
                    .unwrap $ nth value 1
                    , 'Number
                  decode-map-as
                    .unwrap $ nth value 2
                    , 'String
                  when
                    = (count value) 4
                    decode-map-as
                      .unwrap $ nth value 3
                      , 'Number
                  , &unit
              true $ raise "|method must be a Map, Enum or nil"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'check-route! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn check-route! (route)
            check-keys! route $ #{} :path :get :post :put :delete :next
            decode-map-as
              .unwrap $ get route :path
              , 'String
            .each ([] :get :post :put :delete)
              fn (key)
                hint-fn $ {}
                  :args $ [] 'Tag
                  :return 'Unit
                match (get route key)
                  (:none) &unit
                  (:some method) (check-method! method)
                , &unit
            .each (child-routes route) check-route!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Map 'Tag 'T
            :generics $ [] 'T
        'decode-config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-config (input)
            try
              let
                  raw $ decode-map-as input $ :: 'Map 'Tag 'Dynamic
                  port $ match (get raw :port)
                    (:none) 7800
                    (:some value)
                      if (nil? value) 7800 $ decode-map-as value 'Number
                  fallback $ match (get raw :fallback-host)
                    (:none) |
                    (:some value)
                      if (nil? value) | $ decode-map-as value 'String
                  routes $ decode-map-as
                    .unwrap $ get raw :routes
                    :: 'List $ :: 'Map 'Tag 'Dynamic
                when-not
                  and (.integer? port) (>= port 0) (<= port 65535)
                  raise "|port must be an integer between 0 and 65535"
                check-keys! raw $ #{} :port :fallback-host :routes
                .each routes check-route!
                Result :ok $ Config :port port :fallback-host fallback :routes routes
              fn (error)
                Result :err $ str error
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Result 'app.schema/Config 'String
          :tests $ [] $ %{} 'TestEntry (:name |port-range)
            :code $ quote $ do
              .each ([] 0 7800 65535)
                fn (port)
                  match
                    decode-config $ {} (:port port)
                      :routes $ []
                    (:ok config)
                      assert= port $ :port config
                    (:err message) (raise message)
              .each ([] -1 1.5 65536)
                fn (port)
                  match
                    decode-config $ {} (:port port)
                      :routes $ []
                    (:ok config) (raise "|invalid port accepted")
                    (:err message)
                      assert= true $ .includes? message |port
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.router
          :require
            app.schema :refer $ Config
            app.util :refer $ file?
            app.path :refer $ child-routes
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Config (:port 'Number) (:fallback-host 'String)
            :routes $ :: 'List $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'default-config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def default-config
            Config :port 7800 :fallback-host | :routes $ []
          :examples $ []
          :schema $ :: 'app.schema/Config
        'html-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def html-header
            {} $ :Content-Type |text/html
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
        'json-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def json-header
            {} $ :Content-Type |application/json
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.util $ %{} 'FileEntry
      :defs $ {}
        'delay! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn delay! (t f)
            node/set-timeout!
              fn () (f) &unit
              , t
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
            :features $ #{} :js-ffi
        'file? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn file? (x)
            or (= :file x) (= |file x)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'split-path $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-path (x)
            -> (split x |/)
              filter $ fn (part)
                not $ blank? part
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :return $ :: 'List 'String
          :tests $ [] $ %{} 'TestEntry (:name |trims-empty-segments)
            :code $ quote $ do
              assert= ([] |a |b) (split-path |/a//b/)
              assert= ([]) (split-path |///)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
          :require $ js-ffi.node :as node
