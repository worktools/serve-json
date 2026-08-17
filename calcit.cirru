
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |app) (:version |0.0.13)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :modules $ [] |skir/ |lilac/
      :type-slots $ {}
  :files $ {}
    |app.config $ %{} 'FileEntry
      :defs $ {}
        |*configs $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *configs nil)
          :examples $ []
          :schema $ :: 'Dynamic
        |detect-config-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn detect-config-file! () $ if (fs/existsSync |config.cirru) |config.cirru nil
          :examples $ []
          :schema $ :: 'Dynamic
        |load-config! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn load-config! () $ let
                argv $ unsafe-coerce js/process.argv JsObject
                raw-path $ aget argv 2
                config-path $ if (js-present? raw-path) (unsafe-coerce raw-path String) (detect-config-file!)
              when (nil? config-path) (println "|No config file: config.cirru") (js/process.exit 1)
              when-not (fs/existsSync config-path) (println "|Not found:" config-path) (js/process.exit 1)
              println "|Running at" js/process.env.PWD
              load-config-from-file! config-path
              gaze config-path $ fn (err watcher)
                .!on watcher |changed $ fn (e) (load-config-from-file! config-path)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |load-config-from-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn load-config-from-file! (config-path)
              let
                  ext $ path/extname config-path
                  content $ fs/readFileSync config-path |utf8
                  result $ case-default ext
                    do $ println "|Unknown config file" config-path
                    |.cirru $ parse-cirru-edn content
                    |.json $ -> content js/JSON.parse to-calcit-data tagging-edn
                    |.json5 $ -> (.!parse JSON5 content) to-calcit-data tagging-edn
                  validation $ validate-lilac result (lilac-router+)
                if (option:unwrap-or (&map:get validation :ok?) false) (println "|passed validation")
                  println $ .!red chalk
                    option:unwrap-or (&map:get validation :formatted-message) |unknown-error
                println "|Loaded config from" config-path
                reset! *configs result
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'String
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.config $ :require (|fs :as fs) (|gaze :default gaze) (|chalk :default chalk) (|path :as path)
            app.router :refer $ lilac-router+
            lilac.core :refer $ validate-lilac
            |json5 :default JSON5
    |app.main $ %{} 'FileEntry
      :defs $ {}
        |*proxy $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *proxy $ .!createProxy http-proxy (js-object)
          :examples $ []
          :schema $ :: 'Dynamic
        |handle-request! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn handle-request! (req res)
              let
                  config $ option:unwrap-or @*configs {}
                  routes $ option:unwrap-or (&map:get config :routes) {}
                  fallback-host $ option:unwrap-or (&map:get config :fallback-host) nil
                  request-url $ option:unwrap-or (&map:get req :url) |
                  request-method $ option:unwrap-or (&map:get req :method) :get
                  request-headers $ option:unwrap-or (&map:get req :headers) {}
                  original-request $ option:unwrap-or (&map:get req :original-request) {}
                  pathname $ first
                    .split request-url |?
                  segments $ split-path pathname
                  rule-result $ find-match-rule segments routes
                  matched-rule $ option:unwrap-or (&map:get rule-result :rule) {}
                  rule-ok? $ option:unwrap-or (&map:get rule-result :ok?) false
                  info $ option:unwrap-or (get matched-rule request-method) nil
                  cors-header $ {} (|Access-Control-Allow-Credentials true) (|Access-Control-Allow-Methods |PUT,POST,DELETE)
                    |Access-Control-Allow-Origin $ option:unwrap-or (&map:get request-headers |origin) |
                    |Access-Control-Allow-Headers |Content-Type
                ; println "|find rule" pathname rule-result info request-method
                cond
                    = pathname |/
                    {} (:code 200) (:message |OK)
                      :headers $ merge cors-header schema/json-header
                      :body $ js/JSON.stringify
                        to-js-data $ {}
                          :message $ str "|This is a data mocking server."
                          :choices $ list-paths routes
                        , nil 2
                  (= :options request-method)
                    {} (:code 200) (:message |OK)
                      :headers $ merge cors-header
                      :body |OK
                  (= pathname |/favicon.ico)
                    {} (:code 301)
                      :headers $ {} (:Location |http://cdn.tiye.me/logo/jimeng-360x360.png)
                  (or (not rule-ok?) (nil? info))
                    if (some? fallback-host)
                      do
                        println $ .!gray chalk "|proxy to" fallback-host pathname
                        try
                          .!web @*proxy original-request res $ js-object (:target fallback-host)
                          fn (err)
                            {} (:code 500) (:message "|Failed to access fallback host")
                              :headers $ merge cors-header schema/json-header
                              :body err
                        , :effect
                      do (println 404 pathname)
                        {} (:code 400) (:message "|Not matching")
                          :headers $ merge cors-header schema/json-header
                          :body $ js/JSON.stringify
                            js-object
                              :message $ str "|No matching path for " pathname
                              :reason $ to-js-data rule-result
                            , nil 2
                  (and (map? info) (file? (option:unwrap-or (&map:get info :type) nil)))
                    fn (send!)
                      let
                          mock-path $ option:unwrap-or (&map:get info :file) |
                          response-code $ option:unwrap-or (&map:get info :code) 200
                          response-delay $ option:unwrap-or (&map:get info :delay) 0
                        respond-with-file! mock-path pathname response-code response-delay cors-header send!
                  (enum? info)
                    tag-match info
                      (:file code mock-path)
                        fn (send!) (respond-with-file! mock-path pathname code 0 cors-header send!)
                      (:file code mock-path delay)
                        fn (send!) (respond-with-file! mock-path pathname code delay cors-header send!)
                      _ $ do (eprintln 400 info)
                        {} (:code 400) (:message "|Unknown config")
                          :headers $ merge cors-header schema/json-header
                          :body $ js/JSON.stringify
                            js-object
                              :message $ str "|No matching path for " pathname
                              :reason $ to-js-data info
                            , nil 2
                  true $ do
                    println "|Bad result for rule" pathname request-method info
                    {} (:code 400) (:message "|Unknown request")
                      :headers $ merge cors-header schema/json-header
                      :body $ js-object (:code 400) (:message "|Unknown rule")
                        :rule $ to-js-data matched-rule
                        :info $ to-js-data info
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () (; println @*configs) (load-console-formatter!) (load-config!)
              let
                  config $ option:unwrap-or @*configs {}
                  port $ option:unwrap-or (&map:get config :port) 7800
                skir/create-server!
                  fn (a b) (handle-request! a b)
                  {} (:port port)
              ; check-version!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |on-proxy-error $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-proxy-error (err req res) (js/console.log err)
              .end res $ str "|No path matched: " (.-url req) \newline \newline err
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ println |Reloaded.
          :examples $ []
          :schema $ :: 'Dynamic
        |respond-with-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn respond-with-file! (mock-path pathname code delay cors-header send!)
              fs/access mock-path $ fn (err)
                if (some? err)
                  do (println "|Need file" mock-path)
                    send! $ {} (:code 404) (:message "|Unknown request")
                      :headers $ merge cors-header schema/html-header
                      :body $ str mock-path "| not found"
                  do
                    println $ .!gray chalk |sending mock-path |to pathname
                    delay! (or delay 0)
                      fn () $ fs/readFile mock-path |utf8
                        fn (err content)
                          try
                            send! $ {}
                              :code $ or code 200
                              :message |OK
                              :headers $ merge cors-header schema/json-header
                              :body $ js/JSON.stringify (.!parse JSON5 content) nil 2
                            fn (e) (js/console.error e)
                              send! $ {} (:code 500) (:message |Error)
                                :headers $ merge cors-header schema/json-header
                                :body $ js/JSON.stringify
                                  js-object (:message |Error)
                                    :msg $ str e
                                    :error e
                                  , nil 2
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require (skir.core :as skir) (|node:fs :as fs) (|node:path :as path) (|latest-version :as latest-version) (|chalk :default chalk)
            app.util :refer $ check-version! file? split-path delay!
            app.schema :as schema
            app.path :refer $ find-match-rule list-paths
            app.config :refer $ *configs load-config!
            |http-proxy :default http-proxy
            |json5 :default JSON5
    |app.path $ %{} 'FileEntry
      :defs $ {}
        |find-match-rule $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn find-match-rule (segments rules)
              let
                  current-match $ loop
                      xs rules
                    let
                        cursor $ first xs
                      ; println |compare segments |to cursor
                      if (empty? xs) nil $ let
                          cursor-path $ option:unwrap-or (&map:get cursor :path) |
                          result $ match-path segments
                            split-path cursor-path
                        ; println |result result
                        ; println |cursor cursor
                        if (option:unwrap-or (&map:get result :matches?) false) (assoc result :rule cursor)
                          recur $ rest xs
                ; println "|current rule" current-match
                if (nil? current-match)
                  {} (:ok? false) (:segments segments)
                    :choices $ -> rules .to-list
                      map $ fn (r) (get r :path)
                  let
                      matched-rule $ option:unwrap-or (&map:get current-match :rule) {}
                      remaining-segments $ option:unwrap-or (&map:get current-match :rest) []
                      next-rules $ option:unwrap-or (&map:get matched-rule :next) {}
                    if
                      empty? remaining-segments
                      {} (:ok? true) (:rule matched-rule)
                      recur remaining-segments next-rules
          :examples $ []
          :schema $ :: 'Dynamic
        |letter-number-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def letter-number-pattern $ new js/RegExp |\{[\w\d\-]+\}
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'JsObject)
              :args $ []
              :features $ #{} :js-ffi
        |list-paths $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn list-paths (routes)
              -> routes .to-list $ mapcat
                fn (rule)
                  concat
                    [] $ {}
                      :path $ option:unwrap-or (&map:get rule :path) |
                      :methods $ .to-list
                        exclude (keys rule) :path :next
                    ->
                      list-paths $ option:unwrap-or (&map:get rule :next) {}
                      map $ fn (x)
                        {}
                          :path $ str (option:unwrap-or (&map:get rule :path) |) |/
                            (option:unwrap-or (&map:get x :path) |)
                          :methods $ option:unwrap-or (&map:get x :methods) []
          :examples $ []
          :schema $ :: 'Dynamic
        |match-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn match-path (segments rule-path) (; println |matching segments rule-path)
                  if (empty? rule-path)
                {} (:matches? true) (:rest segments)
                cond
                    empty? segments
                    {} (:matches false) (:rest segments) (:rest-rule rule-path)
                  (= (first segments) (first rule-path))
                    recur (rest segments) (rest rule-path)
                  (or (.starts-with? (first rule-path) |:) (.!test letter-number-pattern (first rule-path)))
                    recur (rest segments) (rest rule-path)
                  true $ {} (:matches? false) (:rest segments) (:rest-rule rule-path)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.path $ :require
            app.util :refer $ split-path
    |app.router $ %{} 'FileEntry
      :defs $ {}
        |lilac-method+ $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deflilac lilac-method+ () $ optional+
              or+ $ []
                record+
                  {}
                    :code $ optional+ (number+)
                    :type $ or+
                      [] (is+ :file) (is+ |file)
                    :file $ string+
                    :delay $ optional+ (number+)
                  {} $ :check-keys? true
                tuple+ $ :: (tag+) (number+) (string+)
                tuple+ $ :: (tag+) (number+) (string+) (number+)
          :examples $ []
          :schema $ :: 'Dynamic
        |lilac-router+ $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deflilac lilac-router+ () $ record+
              {}
                :port $ optional+ (number+)
                :fallback-host $ optional+ (string+)
                :routes $ list+ (lilac-router-path+)
              {} $ :check-keys? true
          :examples $ []
          :schema $ :: 'Dynamic
        |lilac-router-path+ $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deflilac lilac-router-path+ () $ record+
              {}
                :path $ string+
                :get $ lilac-method+
                :post $ lilac-method+
                :put $ lilac-method+
                :delete $ lilac-method+
                :next $ optional+
                  list+ $ lilac-router-path+
              {} $ :check-keys? true
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.router $ :require
            lilac.core :refer $ validate-lilac number+ string+ keyword+ boolean+ nil+ list+ map+ set+ deflilac or+ and+ not+ custom+ is+ optional+ record+ tuple+ tag+
    |app.schema $ %{} 'FileEntry
      :defs $ {}
        |html-header $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def html-header $ {} (:Content-Type |text/html)
          :examples $ []
          :schema $ :: 'Dynamic
        |json-header $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def json-header $ {} (:Content-Type |application/json)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.util $ %{} 'FileEntry
      :defs $ {}
        |check-version! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn check-version! () (hint-fn async)
              let
                  pkg $ js/JSON.parse
                    fs/readFileSync $ path/join
                      dirname $ fileURLToPath js/import.meta.url
                      , |../package.json
                  version $ .-version pkg
                  npm-version $ js-await
                    latest-version $ .-name pkg
                if (= npm-version version) (println "|Running latest version" version)
                  println $ .!yellow chalk (str "|New version " npm-version "| available, current one is " version "| " "|. Please upgrade!\nyarn global add @jimengio/serve-json\n\n")
          :examples $ []
          :schema $ :: 'Dynamic
        |delay! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn delay! (t f) (js/setTimeout f t)
          :examples $ []
          :schema $ :: 'Dynamic
        |file? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn file? (x)
              or (= :file x) (= |file x)
          :examples $ []
          :schema $ :: 'Dynamic
        |split-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn split-path (x)
              -> (.split x |/)
                filter $ fn (x)
                  not $ .blank? x
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.util $ :require (|fs :as fs) (|chalk :default chalk) (|latest-version :default latest-version) (|path :as path)
            |path :refer $ dirname
            |url :refer $ fileURLToPath
