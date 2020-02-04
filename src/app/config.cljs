
(ns app.config
  (:require ["fs" :as fs]
            ["gaze" :as gaze]
            ["chalk" :as chalk]
            ["path" :as path]
            [app.router :refer [lilac-router+]]
            [lilac.core :refer [validate-lilac]]
            ["js-yaml" :as js-yaml]
            ["cson-parser" :as CSON]
            [clojure.string :as string]
            [cljs.reader :refer [read-string]]
            [cirru-edn.core :refer [parse]]))

(defonce *configs (atom nil))

(defn detect-config-file! []
  (cond
    (fs/existsSync "config.cirru") "config.cirru"
    (fs/existsSync "config.cson") "config.cson"
    (fs/existsSync "config.edn") "config.edn"
    (fs/existsSync "config.json") "config.json"
    (fs/existsSync "config.yaml") "config.yaml"
    :else nil))

(defn load-config-from-file! [config-path]
  (let [ext (path/extname config-path)
        content (fs/readFileSync config-path "utf8")
        result (case ext
                 ".cirru" (parse content)
                 ".edn" (read-string content )
                 ".json" (js->clj (js/JSON.parse content) :keywordize-keys true)
                 ".cson" (js->clj (CSON/parse content) :keywordize-keys true)
                 ".yaml" (js->clj (js-yaml/load content) :keywordize-keys true)
                 (do (println "Unknown config file" config-path)))
        validation (validate-lilac result (lilac-router+))]
    (if (:ok? validation)
      (println "passed validation")
      (println (chalk/red (:formatted-message validation))))
    (println "Loaded config from" config-path)
    (reset! *configs result)))

(defn load-config! []
  (let [config-path (or (aget js/process.argv 2) (detect-config-file!))]
    (when (nil? config-path) (println "No config file: config.edn") (.exit js/process 1))
    (when-not (fs/existsSync config-path)
      (println "Not found:" config-path)
      (.exit js/process 1))
    (println "Running at" js/process.env.PWD)
    (load-config-from-file! config-path)
    (gaze
     config-path
     (fn [err watcher]
       (.on ^js watcher "changed" (fn [] (load-config-from-file! config-path)))))))
