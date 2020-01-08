
(ns app.main
  (:require [skir.core :as skir]
            ["fs" :as fs]
            ["path" :as path]
            [cirru-edn.core :refer [parse]]
            [clojure.string :as string]
            [cljs.reader :refer [read-string]]
            ["gaze" :as gaze]))

(defonce *configs (atom nil))

(defn match-path [segments rule-path]
  (comment println "matching" segments rule-path)
  (if (empty? rule-path)
    {:matches? true, :rest segments}
    (cond
      (empty? segments) {:matches false, :rest segments, :rest-rule rule-path}
      (= (first segments) (first rule-path)) (recur (rest segments) (rest rule-path))
      (string/starts-with? (first rule-path) ":") (recur (rest segments) (rest rule-path))
      :else {:matches? false, :rest segments, :rest-rule rule-path})))

(defn split-path [x] (->> (string/split x "/") (filter (fn [x] (not (string/blank? x))))))

(defn find-match-rule [segments rules]
  (let [current-match (loop [xs rules]
                        (let [cursor (first xs)]
                          (comment println "compare" segments "to" cursor)
                          (if (empty? xs)
                            nil
                            (let [result (match-path segments (split-path (:path cursor)))]
                              (comment println "result" result)
                              (comment println "cursor" cursor)
                              (if (:matches? result)
                                (assoc result :rule cursor)
                                (recur (rest xs)))))))]
    (comment println "current rule" current-match)
    (if (nil? current-match)
      nil
      (let [matched-rule (:rule current-match)]
        (if (empty? (:rest current-match))
          matched-rule
          (recur (:rest current-match) (:next matched-rule)))))))

(def html-header {:Content-Type "text/html"})

(def json-header {:Content-Type "application/json"})

(defn handle-request! [req]
  (let [routes (:routes @*configs)
        segments (split-path (:url req))
        that-rule (find-match-rule segments routes)
        info (get that-rule (:method req))
        file-type (:type info)]
    (comment println "find rule" that-rule)
    (cond
      (nil? that-rule)
        {:code 400,
         :message "Not matching",
         :headers html-header,
         :body (str "No matching path for " (:url req))}
      (= :file file-type)
        (let [mock-path (path/join js/process.env.PWD (:file info))]
          (if (fs/existsSync mock-path)
            {:code 200,
             :message "OK",
             :headers json-header,
             :body (fs/readFileSync mock-path "utf8")}
            {:code 400,
             :message "Unknown request",
             :headers html-header,
             :body (str mock-path " not found")}))
      :else
        {:code 400,
         :message "Unknown request",
         :headers json-header,
         :body (clj->js {:code 400, :message "Unknown rule", :rule that-rule, :info info})})))

(defn load-config-from-file! [config-path]
  (let [ext (path/extname config-path)
        content (fs/readFileSync config-path "utf8")
        result (case ext
                 ".cirru" (parse content)
                 ".edn" (read-string content )
                 ".json" (js->clj (js/JSON.parse content) :keywordize-keys true)
                 (do (println "Unknown config file" config-path)))]
    (println "Running at" js/process.env.PWD)
    (println "Loaded config from" config-path)
    (reset! *configs result)))

(defn load-config! []
  (let [config-path (or (aget js/process.argv 2) "config.edn")]
    (when-not (fs/existsSync config-path)
      (println "Found no config" config-path)
      (.exit js/process 1))
    (load-config-from-file! config-path)
    (gaze
     config-path
     (fn [err watcher] (.on watcher "changed" (fn [] (load-config-from-file! config-path)))))))

(defn main! []
  (comment println @*configs)
  (load-config!)
  (skir/create-server! #(handle-request! %) {:port 8008}))

(defn reload! []
  (.clear js/console)
  (reset! *configs (load-config!))
  (println "Reloaded configs."))
