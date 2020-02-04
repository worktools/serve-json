
(ns app.path (:require [clojure.string :as string] [app.util :refer [split-path]]))

(defn match-path [segments rule-path]
  (comment println "matching" segments rule-path)
  (if (empty? rule-path)
    {:matches? true, :rest segments}
    (cond
      (empty? segments) {:matches false, :rest segments, :rest-rule rule-path}
      (= (first segments) (first rule-path)) (recur (rest segments) (rest rule-path))
      (string/starts-with? (first rule-path) ":") (recur (rest segments) (rest rule-path))
      :else {:matches? false, :rest segments, :rest-rule rule-path})))

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
      {:ok? false, :segments segments, :choices (map :path rules)}
      (let [matched-rule (:rule current-match)]
        (if (empty? (:rest current-match))
          {:ok? true, :rule matched-rule}
          (recur (:rest current-match) (:next matched-rule)))))))
