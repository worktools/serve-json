
(ns app.util
  (:require ["fs" :as fs]
            ["chalk" :as chalk]
            ["latest-version" :as latest-version]
            ["path" :as path]
            [clojure.string :as string]
            [cljs.core.async :refer [go]]
            [cljs.core.async.interop :refer (<p!)])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defn check-version! []
  (go
   (let [pkg (.parse js/JSON (fs/readFileSync (path/join js/__dirname "../package.json")))
         version (.-version pkg)
         npm-version (<p! (latest-version (.-name pkg)))]
     (if (= npm-version version)
       (println "Running latest version" version)
       (println
        (.yellow
         chalk
         (<<
          "New version ~{npm-version} available, current one is ~{version} . Please upgrade!\n\nyarn global add @jimengio/serve-json\n\n")))))))

(defn delay! [t f] (js/setTimeout f t))

(defn file? [x] (or (= :file x) (= "file" x)))

(defn split-path [x] (->> (string/split x "/") (filter (fn [x] (not (string/blank? x))))))
