
(ns app.main
  (:require [skir.core :as skir]
            ["fs" :as fs]
            ["path" :as path]
            [clojure.string :as string]
            [cljs.reader :refer [read-string]]
            ["latest-version" :as latest-version]
            ["chalk" :as chalk]
            [app.util :refer [check-version! file? split-path]]
            [app.schema :as schema]
            [app.path :refer [find-match-rule]]
            [app.config :refer [*configs load-config!]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defn handle-request! [req]
  (let [routes (:routes @*configs)
        pathname (first (string/split (:url req) "?"))
        segments (split-path pathname)
        that-rule (find-match-rule segments routes)
        info (get that-rule (:method req))
        file-type (:type info)]
    (comment println "find rule" pathname that-rule info (:method req))
    (cond
      (= pathname "/")
        {:code 200,
         :message "OK",
         :headers schema/html-header,
         :body (str "This is a JSON mocking server.")}
      (= pathname "/favicon.ico")
        {:code 301, :headers {:Location "http://cdn.tiye.me/logo/jimeng-360x360.png"}}
      (nil? that-rule)
        (do
         (println 404 pathname)
         {:code 400,
          :message "Not matching",
          :headers schema/html-header,
          :body (str "No matching path for " pathname)})
      (file? file-type)
        (let [mock-path (:file info)]
          (if (fs/existsSync mock-path)
            (do
             (println "sending" mock-path "to" pathname)
             {:code (or (:code info) 200),
              :message "OK",
              :headers schema/json-header,
              :body (fs/readFileSync mock-path "utf8")})
            (do
             (println "Need file" mock-path)
             {:code 404,
              :message "Unknown request",
              :headers schema/html-header,
              :body (str mock-path " not found")})))
      :else
        (do
         (println "Bad result for rule" pathname (:method req) info)
         {:code 400,
          :message "Unknown request",
          :headers schema/json-header,
          :body (clj->js {:code 400, :message "Unknown rule", :rule that-rule, :info info})}))))

(defn main! []
  (comment println @*configs)
  (load-config!)
  (skir/create-server! #(handle-request! %) {:port (or (:port @*configs) 7800)})
  (check-version!))

(defn reload! [] (println "Reloaded."))
