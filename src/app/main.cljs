
(ns app.main (:require [skir.client :as skir-client]))

(defn main! [] (println "Started."))

(defn reload! [] (.clear js/console) (println "Reloaded."))
