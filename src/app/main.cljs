
(ns app.main
  (:require [skir.core :as skir]
            ["fs" :as fs]
            ["path" :as path]
            [clojure.string :as string]
            [cljs.reader :refer [read-string]]
            ["latest-version" :as latest-version]
            ["chalk" :as chalk]
            [app.util :refer [check-version! file? split-path delay!]]
            [app.schema :as schema]
            [app.path :refer [find-match-rule list-paths]]
            [app.config :refer [*configs load-config!]]
            ["http-proxy" :as http-proxy])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defonce proxy (.createProxy http-proxy (clj->js {})))

(defn handle-request! [req res]
  (let [routes (:routes @*configs)
        fallback-host (:fallback-host @*configs)
        pathname (first (string/split (:url req) "?"))
        segments (split-path pathname)
        rule-result (find-match-rule segments routes)
        info (get (:rule rule-result) (:method req))
        file-type (:type info)
        cors-header {"Access-Control-Allow-Credentials" true,
                     "Access-Control-Allow-Origin" (:origin (:headers req))}]
    (comment println "find rule" pathname rule-result info (:method req))
    (cond
      (= pathname "/")
        {:code 200,
         :message "OK",
         :headers (merge cors-header schema/json-header),
         :body (js/JSON.stringify
                (clj->js
                 {:message (str "This is a JSON mocking server."),
                  :choices (list-paths routes)})
                nil
                2)}
      (= pathname "/favicon.ico")
        {:code 301, :headers {:Location "http://cdn.tiye.me/logo/jimeng-360x360.png"}}
      (not (:ok? rule-result))
        (if (some? fallback-host)
          (do
           (println (chalk/gray "proxy to" fallback-host pathname))
           (.web proxy (:original-request req) res (clj->js {:target fallback-host}))
           :effect)
          (do
           (println 404 pathname)
           {:code 400,
            :message "Not matching",
            :headers (merge cors-header schema/json-header),
            :body (js/JSON.stringify
                   (clj->js
                    {:message (str "No matching path for " pathname), :reason rule-result})
                   nil
                   2)}))
      (file? file-type)
        (let [mock-path (:file info)]
          (if (fs/existsSync mock-path)
            (fn [send!]
              (do
               (println (chalk/gray "sending" mock-path "to" pathname))
               (delay!
                (or (:delay info) 0)
                (fn []
                  (send!
                   {:code (or (:code info) 200),
                    :message "OK",
                    :headers (merge cors-header schema/json-header),
                    :body (fs/readFileSync mock-path "utf8")})))))
            (do
             (println "Need file" mock-path)
             {:code 404,
              :message "Unknown request",
              :headers (merge cors-header schema/html-header),
              :body (str mock-path " not found")})))
      :else
        (do
         (println "Bad result for rule" pathname (:method req) info)
         {:code 400,
          :message "Unknown request",
          :headers (merge cors-header schema/json-header),
          :body (clj->js
                 {:code 400, :message "Unknown rule", :rule (:rule rule-result), :info info})}))))

(defn main! []
  (comment println @*configs)
  (load-config!)
  (skir/create-server! #(handle-request! %1 %2) {:port (or (:port @*configs) 7800)})
  (check-version!))

(defn reload! [] (println "Reloaded."))
