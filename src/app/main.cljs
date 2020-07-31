
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
                     "Access-Control-Allow-Methods" "PUT,POST,DELETE",
                     "Access-Control-Allow-Origin" (:origin (:headers req)),
                     "Access-Control-Allow-Headers" "Content-Type"}]
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
      (= :options (:method req))
        {:code 200, :message "OK", :headers (merge cors-header), :body "OK"}
      (= pathname "/favicon.ico")
        {:code 301, :headers {:Location "http://cdn.tiye.me/logo/jimeng-360x360.png"}}
      (or (not (:ok? rule-result)) (nil? info))
        (if (some? fallback-host)
          (do
           (println (chalk/gray "proxy to" fallback-host pathname))
           (try
            (.web proxy (:original-request req) res (clj->js {:target fallback-host}))
            (catch
             js/Error
             err
             {:code 500,
              :message "Failed to access fallback host",
              :headers (merge cors-header schema/json-header),
              :body err}))
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
        (fn [send!]
          (let [mock-path (:file info)]
            (fs/access
             mock-path
             (fn [err fd]
               (if (some? err)
                 (do
                  (println "Need file" mock-path)
                  (send!
                   {:code 404,
                    :message "Unknown request",
                    :headers (merge cors-header schema/html-header),
                    :body (str mock-path " not found")}))
                 (do
                  (println (chalk/gray "sending" mock-path "to" pathname))
                  (delay!
                   (or (:delay info) 0)
                   (fn []
                     (fs/readFile
                      mock-path
                      "utf8"
                      (fn [err content]
                        (send!
                         {:code (or (:code info) 200),
                          :message "OK",
                          :headers (merge cors-header schema/json-header),
                          :body content})))))))))))
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

(.on
 proxy
 "error"
 (fn [err req res]
   (js/console.log err)
   (.end res (str "No path matched: " (.-url req) "\n" "\n" err))))
