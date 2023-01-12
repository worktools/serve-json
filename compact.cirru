
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.8)
    :modules $ [] |skir/ |lilac/
  :entries $ {}
  :files $ {}
    |app.config $ {}
      :defs $ {}
        |*configs $ quote (defatom *configs nil)
        |detect-config-file! $ quote
          defn detect-config-file! () $ if (fs/existsSync "\"config.cirru") "\"config.cirru" nil
        |load-config! $ quote
          defn load-config! () $ let
              config-path $ or (aget js/process.argv 2) (detect-config-file!)
            when (nil? config-path) (println "\"No config file: config.cirru") (js/process.exit 1)
            when-not (fs/existsSync config-path) (println "\"Not found:" config-path) (js/process.exit 1)
            println "\"Running at" js/process.env.PWD
            load-config-from-file! config-path
            gaze config-path $ fn (err watcher)
              .!on watcher "\"changed" $ fn () (load-config-from-file! config-path)
        |load-config-from-file! $ quote
          defn load-config-from-file! (config-path)
            let
                ext $ path/extname config-path
                content $ fs/readFileSync config-path "\"utf8"
                result $ case-default ext
                  do $ println "\"Unknown config file" config-path
                  "\".cirru" $ parse-cirru-edn content
                validation $ validate-lilac result (lilac-router+)
              if (:ok? validation) (println "\"passed validation")
                println $ chalk/red (:formatted-message validation)
              println "\"Loaded config from" config-path
              reset! *configs result
      :ns $ quote
        ns app.config $ :require ("\"fs" :as fs) ("\"gaze" :default gaze) ("\"chalk" :as chalk) ("\"path" :as path)
          app.router :refer $ lilac-router+
          lilac.core :refer $ validate-lilac
    |app.main $ {}
      :defs $ {}
        |*proxy $ quote
          defatom *proxy $ .!createProxy http-proxy (js-object)
        |handle-request! $ quote
          defn handle-request! (req res)
            let
                routes $ :routes @*configs
                fallback-host $ :fallback-host @*configs
                pathname $ first
                  .split (:url req) "\"?"
                segments $ split-path pathname
                rule-result $ find-match-rule segments routes
                info $ get (:rule rule-result) (:method req)
                file-type $ :type info
                cors-header $ {} ("\"Access-Control-Allow-Credentials" true) ("\"Access-Control-Allow-Methods" "\"PUT,POST,DELETE")
                  "\"Access-Control-Allow-Origin" $ :origin (:headers req)
                  "\"Access-Control-Allow-Headers" "\"Content-Type"
              ; println "\"find rule" pathname rule-result info $ :method req
              cond
                  = pathname "\"/"
                  {} (:code 200) (:message "\"OK")
                    :headers $ merge cors-header schema/json-header
                    :body $ js/JSON.stringify
                      js-object
                        :message $ str "\"This is a JSON mocking server."
                        :choices $ to-js-data (list-paths routes)
                      , nil 2
                (= :options (:method req))
                  {} (:code 200) (:message "\"OK")
                    :headers $ merge cors-header
                    :body "\"OK"
                (= pathname "\"/favicon.ico")
                  {} (:code 301)
                    :headers $ {} (:Location "\"http://cdn.tiye.me/logo/jimeng-360x360.png")
                (or (not (:ok? rule-result)) (nil? info))
                  if (some? fallback-host)
                    do
                      println $ .!gray chalk "\"proxy to" fallback-host pathname
                      try
                        .!web @*proxy (:original-request req) res $ js-object (:target fallback-host)
                        fn (err)
                          {} (:code 500) (:message "\"Failed to access fallback host")
                            :headers $ merge cors-header schema/json-header
                            :body err
                      , :effect
                    do (println 404 pathname)
                      {} (:code 400) (:message "\"Not matching")
                        :headers $ merge cors-header schema/json-header
                        :body $ js/JSON.stringify
                          js-object
                            :message $ str "\"No matching path for " pathname
                            :reason $ to-js-data rule-result
                          , nil 2
                (file? file-type)
                  fn (send!)
                    let
                        mock-path $ :file info
                      fs/access mock-path $ fn (err)
                        if (some? err)
                          do (println "\"Need file" mock-path)
                            send! $ {} (:code 404) (:message "\"Unknown request")
                              :headers $ merge cors-header schema/html-header
                              :body $ str mock-path "\" not found"
                          do
                            println $ .!gray chalk "\"sending" mock-path "\"to" pathname
                            delay!
                              or (:delay info) 0
                              fn () $ fs/readFile mock-path "\"utf8"
                                fn (err content)
                                  send! $ {}
                                    :code $ or (:code info) 200
                                    :message "\"OK"
                                    :headers $ merge cors-header schema/json-header
                                    :body content
                true $ do
                  println "\"Bad result for rule" pathname (:method req) info
                  {} (:code 400) (:message "\"Unknown request")
                    :headers $ merge cors-header schema/json-header
                    :body $ js-object (:code 400) (:message "\"Unknown rule")
                      :rule $ to-js-data (:rule rule-result)
                      :info $ to-js-data info
        |main! $ quote
          defn main! () (; println @*configs) (load-config!)
            skir/create-server!
              fn (a b) (handle-request! a b)
              {} $ :port
                or (:port @*configs) 7800
            check-version!
        |on-proxy-error $ quote
          defn on-proxy-error (err req res) (js/console.log err)
            .end res $ str "\"No path matched: " (.-url req) \newline \newline err
        |reload! $ quote
          defn reload! () $ println "\"Reloaded."
      :ns $ quote
        ns app.main $ :require (skir.core :as skir) ("\"node:fs" :as fs) ("\"node:path" :as path) ("\"latest-version" :as latest-version) ("\"chalk" :default chalk)
          app.util :refer $ check-version! file? split-path delay!
          app.schema :as schema
          app.path :refer $ find-match-rule list-paths
          app.config :refer $ *configs load-config!
          "\"http-proxy" :default http-proxy
    |app.path $ {}
      :defs $ {}
        |find-match-rule $ quote
          defn find-match-rule (segments rules)
            let
                current-match $ loop
                    xs rules
                  let
                      cursor $ first xs
                    ; println "\"compare" segments "\"to" cursor
                    if (empty? xs) nil $ let
                        result $ match-path segments
                          split-path $ :path cursor
                      ; println "\"result" result
                      ; println "\"cursor" cursor
                      if (:matches? result) (assoc result :rule cursor)
                        recur $ rest xs
              ; println "\"current rule" current-match
              if (nil? current-match)
                {} (:ok? false) (:segments segments)
                  :choices $ -> rules .to-list
                    map $ fn (r) (get r :path)
                let
                    matched-rule $ :rule current-match
                  if
                    empty? $ :rest current-match
                    {} (:ok? true) (:rule matched-rule)
                    recur (:rest current-match) (:next matched-rule)
        |letter-number-pattern $ quote
          def letter-number-pattern $ new js/RegExp "\"\\{[\\w\\d\\-]+\\}"
        |list-paths $ quote
          defn list-paths (routes)
            -> routes .to-list $ mapcat
              fn (rule)
                concat
                  [] $ :path rule
                  ->
                    list-paths $ :next rule
                    map $ fn (x)
                      str (:path rule) "\"/" x
        |match-path $ quote
          defn match-path (segments rule-path) (; println "\"matching" segments rule-path)
            if (empty? rule-path)
              {} (:matches? true) (:rest segments)
              cond
                  empty? segments
                  {} (:matches false) (:rest segments) (:rest-rule rule-path)
                (= (first segments) (first rule-path))
                  recur (rest segments) (rest rule-path)
                (or (.starts-with? (first rule-path) "\":") (.!test letter-number-pattern (first rule-path)))
                  recur (rest segments) (rest rule-path)
                true $ {} (:matches? false) (:rest segments) (:rest-rule rule-path)
      :ns $ quote
        ns app.path $ :require
          app.util :refer $ split-path
    |app.router $ {}
      :defs $ {}
        |lilac-method+ $ quote
          deflilac lilac-method+ () $ optional+
            record+
              {}
                :code $ optional+ (number+)
                :type $ is+ :file
                :file $ string+
                :delay $ optional+ (number+)
              {} $ :check-keys? true
        |lilac-router+ $ quote
          deflilac lilac-router+ () $ record+
            {}
              :port $ number+
              :fallback-host $ optional+ (string+)
              :routes $ list+ (lilac-router-path+)
            {} $ :check-keys? true
        |lilac-router-path+ $ quote
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
      :ns $ quote
        ns app.router $ :require
          lilac.core :refer $ validate-lilac number+ string+ keyword+ boolean+ nil+ list+ map+ set+ deflilac or+ and+ not+ custom+ is+ optional+ record+
    |app.schema $ {}
      :defs $ {}
        |html-header $ quote
          def html-header $ {} (:Content-Type "\"text/html")
        |json-header $ quote
          def json-header $ {} (:Content-Type "\"application/json")
      :ns $ quote (ns app.schema)
    |app.util $ {}
      :defs $ {}
        |check-version! $ quote
          defn check-version! () (hint-fn async)
            let
                pkg $ js/JSON.parse
                  fs/readFileSync $ path/join
                    dirname $ fileURLToPath js/import.meta.url
                    , "\"../package.json"
                version $ .-version pkg
                npm-version $ js-await
                  latest-version $ .-name pkg
              if (= npm-version version) (println "\"Running latest version" version)
                println $ .!yellow chalk (str "\"New version " npm-version "\" available, current one is " version "\" " "\". Please upgrade!\nyarn global add @jimengio/serve-json\n\n" )
        |delay! $ quote
          defn delay! (t f) (js/setTimeout f t)
        |file? $ quote
          defn file? (x)
            or (= :file x) (= "\"file" x)
        |split-path $ quote
          defn split-path (x)
            -> (.split x "\"/")
              filter $ fn (x)
                not $ .blank? x
      :ns $ quote
        ns app.util $ :require ("\"fs" :as fs) ("\"chalk" :default chalk) ("\"latest-version" :default latest-version) ("\"path" :as path)
          "\"path" :refer $ dirname
          "\"url" :refer $ fileURLToPath
