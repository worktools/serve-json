
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
              optional+]]))

(deflilac
 lilac-method+
 ()
 (optional+
  (map+
   {:code (optional+ (number+)), :type (is+ :file), :file (string+)}
   {:restricted-keys #{:code :type :file}})))

(deflilac
 lilac-router-path+
 ()
 (map+
  {:path (string+),
   :get (lilac-method+),
   :post (lilac-method+),
   :put (lilac-method+),
   :delete (lilac-method+),
   :next (optional+ (vector+ (lilac-router-path+)))}
  {:restricted-keys #{:path :get :post :put :delete :next}}))

(deflilac
 lilac-router+
 ()
 (map+
  {:port (number+), :routes (vector+ (lilac-router-path+))}
  {:restricted-keys #{:port :routes}}))
