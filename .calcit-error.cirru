
{} (:location nil) (:message "|unknown ns/def in program: lilac.core/vector+")
  :stack $ []
    {} (:def |calcit.core/{}) (:kind |macro)
      :args $ []
        [] :port $ [] 'number+
        [] :fallback-host $ [] 'optional+ ([] 'string+)
        [] :routes $ [] 'vector+ ([] 'lilac-router-path+)
      :code $ quote
        {}
          :port $ number+
          :fallback-host $ optional+ (string+)
          :routes $ vector+ (lilac-router-path+)
    {} (:def |calcit.core/fn) (:kind |macro)
      :args $ [] ([])
        [] 'record+
          [] '{}
            [] :port $ [] 'number+
            [] :fallback-host $ [] 'optional+ ([] 'string+)
            [] :routes $ [] 'vector+ ([] 'lilac-router-path+)
          [] '{} $ [] :check-keys? true
      :code $ quote
        fn () $ record+
          {}
            :port $ number+
            :fallback-host $ optional+ (string+)
            :routes $ vector+ (lilac-router-path+)
          {} $ :check-keys? true
    {} (:def |calcit.core/{}) (:kind |macro)
      :args $ [] ([] :lilac-type :component)
        [] :name $ [] 'quote :lilac-router+
        [] :args $ [] '[]
        [] :fn $ [] 'fn ([])
          [] 'record+
            [] '{}
              [] :port $ [] 'number+
              [] :fallback-host $ [] 'optional+ ([] 'string+)
              [] :routes $ [] 'vector+ ([] 'lilac-router-path+)
            [] '{} $ [] :check-keys? true
      :code $ quote
        {} (:lilac-type :component)
          :name $ quote :lilac-router+
          :args $ []
          :fn $ fn ()
            record+
              {}
                :port $ number+
                :fallback-host $ optional+ (string+)
                :routes $ vector+ (lilac-router-path+)
              {} $ :check-keys? true
    {} (:def |lilac.core/deflilac) (:kind |macro)
      :args $ [] 'lilac-router+ ([])
        [] 'record+
          [] '{}
            [] :port $ [] 'number+
            [] :fallback-host $ [] 'optional+ ([] 'string+)
            [] :routes $ [] 'vector+ ([] 'lilac-router-path+)
          [] '{} $ [] :check-keys? true
      :code $ quote
        deflilac lilac-router+ () $ record+
          {}
            :port $ number+
            :fallback-host $ optional+ (string+)
            :routes $ vector+ (lilac-router-path+)
          {} $ :check-keys? true
    {} (:def |app.router/lilac-router+) (:kind |fn)
      :args $ []
      :code $ quote
        deflilac lilac-router+ () $ record+
          {}
            :port $ number+
            :fallback-host $ optional+ (string+)
            :routes $ vector+ (lilac-router-path+)
          {} $ :check-keys? true
    {} (:def |calcit.core/let) (:kind |macro)
      :args $ []
        [] $ [] 'validation
          [] 'validate-lilac 'result $ [] 'lilac-router+
        [] 'if ([] :ok? 'validation) ([] 'println "|passed validation")
          [] 'println $ [] 'chalk/red ([] :formatted-message 'validation)
        [] 'println "|Loaded config from" 'config-path
        [] 'reset! '*configs 'result
      :code $ quote
        let
            validation $ validate-lilac result (lilac-router+)
          if (:ok? validation) (println "|passed validation")
            println $ chalk/red (:formatted-message validation)
          println "|Loaded config from" config-path
          reset! *configs result
    {} (:def |calcit.core/let) (:kind |macro)
      :args $ []
        []
          [] 'result $ [] 'case 'ext
            [] |.cirru $ [] 'parse 'content
            [] |.edn $ [] 'read-string 'content
            [] |.json $ [] 'js->clj ([] 'js/JSON.parse 'content) :keywordize-keys true
            [] |.cson $ [] 'js->clj ([] 'CSON/parse 'content) :keywordize-keys true
            [] |.yaml $ [] 'js->clj ([] 'js-yaml/load 'content) :keywordize-keys true
            [] 'do $ [] 'println "|Unknown config file" 'config-path
          [] 'validation $ [] 'validate-lilac 'result ([] 'lilac-router+)
        [] 'if ([] :ok? 'validation) ([] 'println "|passed validation")
          [] 'println $ [] 'chalk/red ([] :formatted-message 'validation)
        [] 'println "|Loaded config from" 'config-path
        [] 'reset! '*configs 'result
      :code $ quote
        let
            result $ case ext
              |.cirru $ parse content
              |.edn $ read-string content
              |.json $ js->clj (js/JSON.parse content) :keywordize-keys true
              |.cson $ js->clj (CSON/parse content) :keywordize-keys true
              |.yaml $ js->clj (js-yaml/load content) :keywordize-keys true
              do $ println "|Unknown config file" config-path
            validation $ validate-lilac result (lilac-router+)
          if (:ok? validation) (println "|passed validation")
            println $ chalk/red (:formatted-message validation)
          println "|Loaded config from" config-path
          reset! *configs result
    {} (:def |calcit.core/let) (:kind |macro)
      :args $ []
        []
          [] 'content $ [] 'fs/readFileSync 'config-path |utf8
          [] 'result $ [] 'case 'ext
            [] |.cirru $ [] 'parse 'content
            [] |.edn $ [] 'read-string 'content
            [] |.json $ [] 'js->clj ([] 'js/JSON.parse 'content) :keywordize-keys true
            [] |.cson $ [] 'js->clj ([] 'CSON/parse 'content) :keywordize-keys true
            [] |.yaml $ [] 'js->clj ([] 'js-yaml/load 'content) :keywordize-keys true
            [] 'do $ [] 'println "|Unknown config file" 'config-path
          [] 'validation $ [] 'validate-lilac 'result ([] 'lilac-router+)
        [] 'if ([] :ok? 'validation) ([] 'println "|passed validation")
          [] 'println $ [] 'chalk/red ([] :formatted-message 'validation)
        [] 'println "|Loaded config from" 'config-path
        [] 'reset! '*configs 'result
      :code $ quote
        let
            content $ fs/readFileSync config-path |utf8
            result $ case ext
              |.cirru $ parse content
              |.edn $ read-string content
              |.json $ js->clj (js/JSON.parse content) :keywordize-keys true
              |.cson $ js->clj (CSON/parse content) :keywordize-keys true
              |.yaml $ js->clj (js-yaml/load content) :keywordize-keys true
              do $ println "|Unknown config file" config-path
            validation $ validate-lilac result (lilac-router+)
          if (:ok? validation) (println "|passed validation")
            println $ chalk/red (:formatted-message validation)
          println "|Loaded config from" config-path
          reset! *configs result
    {} (:def |calcit.core/let) (:kind |macro)
      :args $ []
        []
          [] 'ext $ [] 'path/extname 'config-path
          [] 'content $ [] 'fs/readFileSync 'config-path |utf8
          [] 'result $ [] 'case 'ext
            [] |.cirru $ [] 'parse 'content
            [] |.edn $ [] 'read-string 'content
            [] |.json $ [] 'js->clj ([] 'js/JSON.parse 'content) :keywordize-keys true
            [] |.cson $ [] 'js->clj ([] 'CSON/parse 'content) :keywordize-keys true
            [] |.yaml $ [] 'js->clj ([] 'js-yaml/load 'content) :keywordize-keys true
            [] 'do $ [] 'println "|Unknown config file" 'config-path
          [] 'validation $ [] 'validate-lilac 'result ([] 'lilac-router+)
        [] 'if ([] :ok? 'validation) ([] 'println "|passed validation")
          [] 'println $ [] 'chalk/red ([] :formatted-message 'validation)
        [] 'println "|Loaded config from" 'config-path
        [] 'reset! '*configs 'result
      :code $ quote
        let
            ext $ path/extname config-path
            content $ fs/readFileSync config-path |utf8
            result $ case ext
              |.cirru $ parse content
              |.edn $ read-string content
              |.json $ js->clj (js/JSON.parse content) :keywordize-keys true
              |.cson $ js->clj (CSON/parse content) :keywordize-keys true
              |.yaml $ js->clj (js-yaml/load content) :keywordize-keys true
              do $ println "|Unknown config file" config-path
            validation $ validate-lilac result (lilac-router+)
          if (:ok? validation) (println "|passed validation")
            println $ chalk/red (:formatted-message validation)
          println "|Loaded config from" config-path
          reset! *configs result
    {} (:def |app.config/load-config-from-file!) (:kind |fn)
      :args $ []
      :code $ quote
        defn load-config-from-file! (config-path)
          let
              ext $ path/extname config-path
              content $ fs/readFileSync config-path |utf8
              result $ case ext
                |.cirru $ parse content
                |.edn $ read-string content
                |.json $ js->clj (js/JSON.parse content) :keywordize-keys true
                |.cson $ js->clj (CSON/parse content) :keywordize-keys true
                |.yaml $ js->clj (js-yaml/load content) :keywordize-keys true
                do $ println "|Unknown config file" config-path
              validation $ validate-lilac result (lilac-router+)
            if (:ok? validation) (println "|passed validation")
              println $ chalk/red (:formatted-message validation)
            println "|Loaded config from" config-path
            reset! *configs result
    {} (:def |calcit.core/let) (:kind |macro)
      :args $ []
        [] $ [] 'config-path
          [] 'or ([] 'aget 'js/process.argv 2) ([] 'detect-config-file!)
        [] 'when ([] 'nil? 'config-path) ([] 'println "|No config file: config.edn") ([] '.exit 'js/process 1)
        [] 'when-not ([] 'fs/existsSync 'config-path) ([] 'println "|Not found:" 'config-path) ([] '.exit 'js/process 1)
        [] 'println "|Running at" 'js/process.env.PWD
        [] 'load-config-from-file! 'config-path
        [] 'gaze 'config-path $ [] 'fn ([] 'err 'watcher)
          [] '.on '^js 'watcher |changed $ [] 'fn ([]) ([] 'load-config-from-file! 'config-path)
      :code $ quote
        let
            config-path $ or (aget js/process.argv 2) (detect-config-file!)
          when (nil? config-path) (println "|No config file: config.edn") (.exit js/process 1)
          when-not (fs/existsSync config-path) (println "|Not found:" config-path) (.exit js/process 1)
          println "|Running at" js/process.env.PWD
          load-config-from-file! config-path
          gaze config-path $ fn (err watcher)
            .on ^js watcher |changed $ fn () (load-config-from-file! config-path)
    {} (:def |app.config/load-config!) (:kind |fn)
      :args $ []
      :code $ quote
        defn load-config! () $ let
            config-path $ or (aget js/process.argv 2) (detect-config-file!)
          when (nil? config-path) (println "|No config file: config.edn") (.exit js/process 1)
          when-not (fs/existsSync config-path) (println "|Not found:" config-path) (.exit js/process 1)
          println "|Running at" js/process.env.PWD
          load-config-from-file! config-path
          gaze config-path $ fn (err watcher)
            .on ^js watcher |changed $ fn () (load-config-from-file! config-path)
    {} (:def |app.main/main!) (:kind |fn)
      :args $ []
      :code $ quote
        defn main! () (load-config!)
          skir/create-server! ("#()" handle-request! %1 %2)
            {} $ :port
              or
                :port $ deref *configs
                , 7800
          check-version!
