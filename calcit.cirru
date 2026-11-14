
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
          :code $ quote $ defref *configs None
          :examples $ []
          :schema $ quote $ Ref (Option schema/Config)
        'ChalkHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ChalkHost
            .red $ Fn app.config/ChalkHost String $ -> String
            .gray $ Fn app.config/ChalkHost String $ -> String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ quote Trait
        'FileStatsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileStatsHost (:mtime-ms 'Number) (:ctime-ms 'Number)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ quote Trait
        'FileWatchHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FileWatchHost
            .watch-file! $ Fn app.config/FileWatchHost String JsObject
              Fn app.config/FileStatsHost app.config/FileStatsHost $ -> Unit
              -> JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ quote Trait
        'Json5ParserHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Json5ParserHost
            .parse $ Fn app.config/Json5ParserHost String $ -> Dynamic
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ quote Trait
        'chalk-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn chalk-host () (unsafe-coerce chalk 'app.config/ChalkHost)
          :examples $ []
          :schema $ quote $ Fn (-> ChalkHost) (:features :js-ffi)
        'detect-config-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-config-file! ()
            if (node/file-exists? |config.cirru) (Some |config.cirru) None
          :examples $ []
          :schema $ quote $ Fn
            -> $ Option String
        'load-config! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-config! ()
            let
                selected $ match (node/argv-at 2)
                  (:some path) (Some path)
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
                              hint-fn $ Fn FileStatsHost FileStatsHost (-> Unit) (:features :js-ffi)
                              when
                                or
                                  not= (.-mtime-ms current) (.-mtime-ms previous)
                                  not= (.-ctime-ms current) (.-ctime-ms previous)
                                load-config-from-file! config-path
                              , &unit
                          , true
                        , false
          :examples $ []
          :schema $ quote $ Fn (-> Bool) (:features :io :js-ffi :state)
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
                      reset! *configs $ Some config
                      println "|Loaded config from" config-path
                      , true
                  (:err message)
                    do (eprintln message) false
              fn (error)
                eprintln $ str error
                , false
          :examples $ []
          :schema $ quote $ Fn String (-> Bool) (:features :io :js-ffi :state)
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
          :schema $ quote $ Ref ProxyHost
        'FileMethod $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct FileMethod (:path String) (:code Number) (:delay Number)
          :examples $ []
          :schema $ quote StructDef
        'FileReply $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct FileReply (:code Number) (:message String)
            :headers $ Map Tag String
            :body String
          :examples $ []
          :schema $ quote StructDef
        'FileResponseValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion FileResponseValue Number String (Map Tag String)
          :examples $ []
          :schema $ quote UnionDef
        'HttpProxyFactoryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HttpProxyFactoryHost
            .create-proxy! $ Fn app.main/HttpProxyFactoryHost JsObject $ -> app.main/ProxyHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :create-proxy! |createProxy
          :schema $ quote Trait
        'ProxyHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ProxyHost
            .web $ Fn app.main/ProxyHost js-ffi.node/NodeRequestHost js-ffi.node/NodeServerResponseHost JsObject $ -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ quote Trait
        'RequestOutcome $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion RequestOutcome Tag (Map Tag FileResponseValue)
            Fn
              Fn (Map Tag FileResponseValue) (-> Unit)
              -> Unit
          :examples $ []
          :schema $ quote UnionDef
        'checked-response $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn checked-response (response)
            decode-map-as response $ Map Tag FileResponseValue
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map Tag FileResponseValue
            :generics Input
        'create-proxy! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-proxy! ()
            .create-proxy! (unsafe-coerce http-proxy 'app.main/HttpProxyFactoryHost) (js-object)
          :examples $ []
          :schema $ quote $ Fn (-> ProxyHost) (:features :js-ffi)
        'decode-file-method $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-file-method (info)
            cond
                and (map? info)
                  match (get info :type)
                    (:some kind) (file? kind)
                    (:none) false
                let
                    path $ .unwrap-or (get info :file) |
                    code $ .unwrap-or (get info :code) 200
                    delay $ .unwrap-or (get info :delay) 0
                  Some $ file-method path code delay
              (enum? info)
                match info
                  (:file code path)
                    Some $ file-method path code 0
                  (:file code path delay)
                    Some $ file-method path code delay
                  _ None
              true None
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option FileMethod
            :generics Input
        'file-method $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn file-method (path code delay)
            let
                filename $ decode-map-as path 'String
                status $ decode-map-as (or code 200) Number
                timeout $ decode-map-as (or delay 0) Number
              FileMethod :path filename :code status :delay timeout
          :examples $ []
          :schema $ quote $ Fn Path Code Delay (-> FileMethod) (:generics Path Code Delay)
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
                method-info $ match rule-result
                  (:found rule)
                    get (:raw rule) request-method
                  (:missing _ _) None
                cors-header $ {} (:Access-Control-Allow-Credentials |true) (:Access-Control-Allow-Methods |PUT,POST,DELETE)
                  :Access-Control-Allow-Origin $ .unwrap-or (node/request-header original-request |origin) |
                  :Access-Control-Allow-Headers |Content-Type
              ; println "|find rule" pathname rule-result method-info request-method
              cond
                  = pathname |/
                  assert-type
                    checked-response $ {} (:code 200) (:message |OK)
                      :headers $ .merge cors-header schema/json-header
                      :body $ js/JSON.stringify
                        to-js-data $ {}
                          :message $ str "|This is a data mocking server."
                          :choices $ encode-map-as (list-paths routes) (List app.path/PathChoice)
                        , nil 2
                    , RequestOutcome
                (= :options request-method)
                  assert-type
                    checked-response $ {} (:code 200) (:message |OK) (:headers cors-header) (:body |OK)
                    , RequestOutcome
                (= pathname |/favicon.ico)
                  assert-type
                    checked-response $ {} (:code 301)
                      :headers $ {} $ :Location |http://cdn.tiye.me/logo/jimeng-360x360.png
                    , RequestOutcome
                (not (match method-info ((:some value) (non-nil? value)) ((:none) false)))
                  if (not= fallback-host |)
                    do
                      println $ .gray (chalk-host) (str "|proxy to " fallback-host "| " pathname)
                      try
                        .web @*proxy original-request res $ js-object $ :target fallback-host
                        fn (err)
                          {} (:code 500) (:message "|Failed to access fallback host")
                            :headers $ .merge cors-header schema/json-header
                            :body err
                      assert-type :effect RequestOutcome
                    assert-type
                      do (println 404 pathname)
                        checked-response $ {} (:code 400) (:message "|Not matching")
                          :headers $ .merge cors-header schema/json-header
                          :body $ js/JSON.stringify
                            js-object
                              :message $ str "|No matching path for " pathname
                              :reason $ match rule-result
                                (:found rule)
                                  to-js-data $ {} (:ok? true)
                                    :rule $ :raw rule
                                (:missing remaining choices)
                                  to-js-data $ {} (:ok? false) (:segments remaining) (:choices choices)
                            , nil 2
                      , RequestOutcome
                true $ let
                    info $ .unwrap method-info
                  match
                    match rule-result
                      (:found rule)
                        if
                          contains? (#{} :get :post :put :delete) request-method
                          get (:file-methods rule) request-method
                          decode-file-method info
                      (:missing _ _) None
                    (:some file)
                      assert-type
                        fn (send!)
                          hint-fn $ Fn
                            Fn (Map Tag FileResponseValue) (-> Unit)
                            -> Unit
                          respond-with-file! (:path file) pathname (:code file) (:delay file) cors-header $ fn (reply)
                            send! $ {}
                              :code $ :code reply
                              :message $ :message reply
                              :headers $ :headers reply
                              :body $ :body reply
                        , RequestOutcome
                    (:none)
                      if (enum? info)
                        assert-type
                          do (eprintln 400 info)
                            checked-response $ {} (:code 400) (:message "|Unknown config")
                              :headers $ .merge cors-header schema/json-header
                              :body $ js/JSON.stringify
                                js-object
                                  :message $ str "|No matching path for " pathname
                                  :reason $ to-js-data info
                                , nil 2
                          , RequestOutcome
                        assert-type
                          do (println "|Bad result for rule" pathname request-method info)
                            checked-response $ {} (:code 400) (:message "|Unknown request")
                              :headers $ .merge cors-header schema/json-header
                              :body $ js/JSON.stringify $ js-object (:code 400) (:message "|Unknown rule")
                                :rule $ match rule-result
                                  (:found rule)
                                    to-js-data $ :raw rule
                                  (:missing _ _) (js-object)
                                :info $ to-js-data info
                          , RequestOutcome
          :examples $ []
          :schema $ quote $ Fn skir.schema/Request node/NodeServerResponseHost (-> RequestOutcome) (:features :io :js-ffi :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            when-not (load-config!) (node/exit! 1)
            skir/create-server! handle-request! $ Some $ {}
              :port $ :port $ .unwrap-or @*configs schema/default-config
          :examples $ []
          :schema $ quote $ Fn (-> node/NodeServerHost) (:features :io :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |Reloaded.)
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io)
        'respond-with-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn respond-with-file! (mock-path pathname code delay cors-header send!)
            fs/access mock-path $ fn (err)
              hint-fn $ Fn (JsNullish JsObject) (-> Unit) (:features :js-ffi)
              if (js-present? err)
                do (println "|Need file" mock-path)
                  send! $ FileReply :code 404 :message "|Unknown request" :headers (.merge cors-header schema/html-header) :body $ str mock-path "| not found"
                do
                  println $ .gray (chalk-host) (str |sending "| " mock-path "| to " pathname)
                  delay! delay $ fn ()
                    fs/readFile mock-path |utf8 $ fn (err content)
                      try
                        let
                            body $ decode-map-as
                              js/JSON.stringify
                                .parse (js-cast JSON5 'app.config/Json5ParserHost) (decode-map-as content 'String)
                                , nil 2
                              , String
                          send! $ FileReply :code code :message |OK :headers (.merge cors-header schema/json-header) :body body
                        fn (e)
                          shared/console-error! $ str e
                          let
                              body $ decode-map-as
                                js/JSON.stringify
                                  js-object (:message |Error)
                                    :msg $ str e
                                    :error e
                                  , nil 2
                                , String
                            send! $ FileReply :code 500 :message |Error :headers (.merge cors-header schema/json-header) :body body
                    , &unit
              , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn String String Number Number (Map Tag String)
            Fn FileReply $ -> Unit
            -> Unit
            :features :io :js-ffi
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
        'PathChoice $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct PathChoice (:path String)
            :methods $ List Tag
          :examples $ []
          :schema $ quote StructDef
        'RegExpHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegExpHost
            .test $ Fn app.path/RegExpHost String $ -> Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ quote Trait
        'RouteMatch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum RouteMatch (:found app.schema/Route)
            :missing (List String) (List String)
          :examples $ []
          :schema $ quote EnumDef
        'child-routes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn child-routes (rule)
            match (get rule :next)
              (:none) ([])
              (:some value)
                if (nil? value) ([])
                  decode-map-as value $ List $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn (Map Tag T)
            -> $ List $ Map Tag Dynamic
            :generics T
        'find-match-rule $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-match-rule (segments rules)
            loop
                candidates rules
              match (destruct-list candidates)
                (:none)
                  RouteMatch :missing segments $ map rules $ fn (rule) (:path rule)
                (:some rule more)
                  let
                      rule-path $ :path rule
                    match
                      match-path segments $ split-path rule-path
                      (:none) (recur more)
                      (:some remaining)
                        if (empty? remaining) (RouteMatch :found rule)
                          find-match-rule remaining $ :children rule
          :examples $ []
          :schema $ quote $ Fn (List String) (List app.schema/Route) (-> RouteMatch)
        'letter-number-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn letter-number-pattern ()
            js-cast (new js/RegExp |\{[\w\d\-]+\}) 'app.path/RegExpHost
          :examples $ []
          :schema $ quote $ Fn (-> RegExpHost) (:features :js-ffi)
        'list-paths $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn list-paths (routes)
            -> routes $ mapcat $ fn (rule)
              hint-fn $ Fn app.schema/Route $ -> (List PathChoice)
              let
                  path $ :path rule
                  methods $ &set:to-list $ exclude
                    keys $ :raw rule
                    , :path :next
                concat
                  [] $ PathChoice :path path :methods methods
                  map
                    list-paths $ :children rule
                    fn (child)
                      hint-fn $ Fn PathChoice $ -> PathChoice
                      struct-with child $ :path $ str path |/ (:path child)
          :examples $ []
          :schema $ quote $ Fn (List app.schema/Route)
            -> $ List PathChoice
        'match-path $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn match-path (segments rule-path)
            if (empty? rule-path) (Some segments)
              let
                  segment $ .unwrap-or (first segments) |
                  rule-segment $ .unwrap-or (first rule-path) |
                cond
                    empty? segments
                    , None
                  (= segment rule-segment)
                    recur (rest segments) (rest rule-path)
                  (or (starts-with? rule-segment |:) (.test (letter-number-pattern) rule-segment))
                    recur (rest segments) (rest rule-path)
                  true None
          :examples $ []
          :schema $ quote $ Fn (List String) (List String)
            -> $ Option $ List String
            :features :js-ffi
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
          :schema $ quote $ Fn (Map Tag T) (Set Tag) (-> Unit) (:generics T) (:features :io)
        'check-method! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn check-method! (value)
            cond
                nil? value
                , &unit
              (map? value)
                let
                    data $ decode-map-as value $ Map Tag Dynamic
                  check-keys! data $ #{} :type :file :code :delay
                  when-not
                    file? $ .unwrap $ get data :type
                    raise "|method.type must be file"
                  decode-map-as
                    .unwrap $ get data :file
                    , 'String
                  .foldl ([] :code :delay) &unit $ fn (_acc key)
                    hint-fn $ Fn Unit Tag $ -> Unit
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
          :schema $ quote $ Fn Input (-> Unit) (:generics Input) (:features :io)
        'decode-config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-config (input)
            try
              let
                  raw $ decode-map-as input $ Map Tag Dynamic
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
                    List $ Map Tag Dynamic
                when-not
                  and (.integer? port) (>= port 0) (<= port 65535)
                  raise "|port must be an integer between 0 and 65535"
                check-keys! raw $ #{} :port :fallback-host :routes
                Result :ok $ Config :port port :fallback-host fallback :routes $ map routes decode-route
              fn (error)
                Result :err $ str error
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Result Config String
            :generics Input
            :features :io
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
        'decode-route $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-route (route)
            check-keys! route $ #{} :path :get :post :put :delete :next
            let
                file-methods $ .foldl ([] :get :post :put :delete) ({})
                  fn (methods key)
                    match (get route key)
                      (:none) methods
                      (:some raw)
                        do (check-method! raw)
                          match (app.main/decode-file-method raw)
                            (:some method) (assoc methods key method)
                            (:none) methods
              app.schema/Route :path
                decode-map-as
                  .unwrap $ get route :path
                  , String
                , :raw route :file-methods file-methods :children $ map (child-routes route) decode-route
          :examples $ []
          :schema $ quote $ Fn (Map Tag Field) (-> app.schema/Route) (:generics Field) (:features :io)
          :tests $ [] $ %{} 'TestEntry (:name |legacy-file-method-and-nil)
            :code $ quote $ let
                route $ decode-route $ {} (:path |legacy) (:post nil)
                  :get $ :: :file 202 |fixture.json
              assert= None $ get (:file-methods route) :post
              assert=
                Some $ app.main/FileMethod :path |fixture.json :code 202 :delay 0
                get (:file-methods route) :get
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.router
          :require
            app.schema :refer $ Config
            app.util :refer $ file?
            app.path :refer $ child-routes
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Config (:port Number) (:fallback-host String)
            :routes $ List app.schema/Route
          :examples $ []
          :schema $ quote StructDef
        'Route $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Route (:path String)
            :raw $ Map Tag Dynamic
            :children $ List app.schema/Route
            :file-methods $ Map Tag app.main/FileMethod
          :examples $ []
          :schema $ quote StructDef
        'default-config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def default-config
            Config :port 7800 :fallback-host | :routes $ []
          :examples $ []
          :schema $ quote Config
        'html-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def html-header
            {} $ :Content-Type |text/html
          :examples $ []
          :schema $ quote $ Map Tag String
        'json-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def json-header
            {} $ :Content-Type |application/json
          :examples $ []
          :schema $ quote $ Map Tag String
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
          :schema $ quote $ Fn Number
            Fn $ -> Unit
            -> Unit
            :features :js-ffi
        'file? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn file? (x)
            or
              and (tag? x) (= :file x)
              and (string? x) (= |file x)
          :examples $ []
          :schema $ quote $ Fn Input (-> Bool) (:generics Input)
        'split-path $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn split-path (x)
            -> (split x |/)
              filter $ fn (part)
                not $ blank? part
          :examples $ []
          :schema $ quote $ Fn String
            -> $ List String
          :tests $ [] $ %{} 'TestEntry (:name |trims-empty-segments)
            :code $ quote $ do
              assert= ([] |a |b) (split-path |/a//b/)
              assert= ([]) (split-path |///)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util
          :require $ js-ffi.node :as node
