
(ns app.router
  (:require [lilac.core
             :refer
             [validate-lilac
              number+
              string+
              keyword+
              boolean+
              nil+
              vector+
              list+
              map+
              set+
              deflilac
              or+
              and+
              not+
              custom+
              is+
              optional+
              record+]]))

(deflilac
 lilac-method+
 ()
 (optional+
  (record+
   {:code (optional+ (number+)),
    :type (is+ :file),
    :file (string+),
    :delay (optional+ (number+))}
   {:check-keys? true})))

(deflilac
 lilac-router-path+
 ()
 (record+
  {:path (string+),
   :get (lilac-method+),
   :post (lilac-method+),
   :put (lilac-method+),
   :delete (lilac-method+),
   :next (optional+ (vector+ (lilac-router-path+)))}
  {:check-keys? true}))

(deflilac
 lilac-router+
 ()
 (record+
  {:port (number+),
   :fallback-host (optional+ (string+)),
   :routes (vector+ (lilac-router-path+))}
  {:check-keys? true}))
