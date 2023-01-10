
{}
  :configs $ {} (:init-fn |app.main/main!) (:local-storage-key |calcit-storage) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.7)
    :modules $ [] |skir/ |lilac/
  :entries $ {}
  :ir $ {} (:package |app)
    :files $ {}
      |app.config $ {}
        :defs $ {}
          |*configs $ {} (:at 1578370384023) (:by |yeKFqj7rX) (:id |QtOL1GYfp) (:type :expr)
            :data $ {}
              |T $ {} (:at 1673283678438) (:by |yeKFqj7rX) (:id |0lCbF8OJE) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1578370384023) (:by |yeKFqj7rX) (:id |-5L7RIXvi) (:text |*configs) (:type :leaf)
              |r $ {} (:at 1578470435801) (:by |yeKFqj7rX) (:id |fcKwFATj) (:text |nil) (:type :leaf)
          |detect-config-file! $ {} (:at 1578659206175) (:by |yeKFqj7rX) (:id |6foEISulJ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578659208450) (:by |yeKFqj7rX) (:id |FEWD5ZoYo) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578659206175) (:by |yeKFqj7rX) (:id |grkn8J8WJ) (:text |detect-config-file!) (:type :leaf)
              |r $ {} (:at 1578659206175) (:by |yeKFqj7rX) (:id |voiPSDqP2) (:type :expr)
                :data $ {}
              |v $ {} (:at 1578659209555) (:by |yeKFqj7rX) (:id |DFVZoiUl6) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1673372303763) (:by |yeKFqj7rX) (:id |DFVZoiUl6leaf) (:text |if) (:type :leaf)
                  |r $ {} (:at 1578659213674) (:by |yeKFqj7rX) (:id |v9FtLeOab) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578659217700) (:by |yeKFqj7rX) (:id |5ZFPlHsk) (:text |fs/existsSync) (:type :leaf)
                      |j $ {} (:at 1578659227643) (:by |yeKFqj7rX) (:id |SByJOu44) (:text "|\"config.cirru") (:type :leaf)
                  |u $ {} (:at 1578659229590) (:by |yeKFqj7rX) (:id |P4KohX5R) (:text "|\"config.cirru") (:type :leaf)
                  |y $ {} (:at 1578660691513) (:by |yeKFqj7rX) (:id |jH6n4lX-a) (:text |nil) (:type :leaf)
          |load-config! $ {} (:at 1578370482057) (:by |yeKFqj7rX) (:id |hgtICPQiV) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578370488352) (:by |yeKFqj7rX) (:id |3OzpoNhsG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578370482057) (:by |yeKFqj7rX) (:id |HgJUD6lVP) (:text |load-config!) (:type :leaf)
              |r $ {} (:at 1578370482057) (:by |yeKFqj7rX) (:id |bdLs5S7mb) (:type :expr)
                :data $ {}
              |v $ {} (:at 1578468661281) (:by |yeKFqj7rX) (:id |3CkGb1tR) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1578468661920) (:by |yeKFqj7rX) (:id |GNMLCVLqo) (:text |let) (:type :leaf)
                  |L $ {} (:at 1578468662361) (:by |yeKFqj7rX) (:id |Twwidyjw) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578468665650) (:by |yeKFqj7rX) (:id |UCSjnx81w) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578468665650) (:by |yeKFqj7rX) (:id |QZVig-eO9) (:text |config-path) (:type :leaf)
                          |j $ {} (:at 1578468665650) (:by |yeKFqj7rX) (:id |qkokzQCq5) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578468665650) (:by |yeKFqj7rX) (:id |3owa3Q4rM) (:text |or) (:type :leaf)
                              |j $ {} (:at 1578468665650) (:by |yeKFqj7rX) (:id |a0NMjI9o5) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578468665650) (:by |yeKFqj7rX) (:id |2Lg6HmuKI) (:text |aget) (:type :leaf)
                                  |j $ {} (:at 1578468665650) (:by |yeKFqj7rX) (:id |DgaS-cJyx) (:text |js/process.argv) (:type :leaf)
                                  |r $ {} (:at 1578468665650) (:by |yeKFqj7rX) (:id |Vin9uGNP8) (:text |2) (:type :leaf)
                              |r $ {} (:at 1578659197137) (:by |yeKFqj7rX) (:id |TPVQw-ia) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578659205754) (:by |yeKFqj7rX) (:id |XZCWnhK5F) (:text |detect-config-file!) (:type :leaf)
                  |N $ {} (:at 1578660732227) (:by |yeKFqj7rX) (:id |bGtZ5DAy) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578660736483) (:by |yeKFqj7rX) (:id |bGtZ5DAyleaf) (:text |when) (:type :leaf)
                      |j $ {} (:at 1578660737288) (:by |yeKFqj7rX) (:id |EDtln3oo) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578660738823) (:by |yeKFqj7rX) (:id |3r1wi5e_a) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1578660742034) (:by |yeKFqj7rX) (:id |zqINk1Skg) (:text |config-path) (:type :leaf)
                      |r $ {} (:at 1578660743595) (:by |yeKFqj7rX) (:id |HVRHmZZSj) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578660744460) (:by |yeKFqj7rX) (:id |HVRHmZZSjleaf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1673372310640) (:by |yeKFqj7rX) (:id |jbqQGRzY1) (:text "|\"No config file: config.cirru") (:type :leaf)
                      |v $ {} (:at 1578660770954) (:by |yeKFqj7rX) (:id |89nhW4u6s) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1673283711398) (:by |yeKFqj7rX) (:id |JNuzhvAGZ) (:text |js/process.exit) (:type :leaf)
                          |r $ {} (:at 1578660770954) (:by |yeKFqj7rX) (:id |vDalnwfAV) (:text |1) (:type :leaf)
                  |P $ {} (:at 1578468667152) (:by |yeKFqj7rX) (:id |v4x-N90D) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578468684189) (:by |yeKFqj7rX) (:id |v4x-N90Dleaf) (:text |when-not) (:type :leaf)
                      |j $ {} (:at 1578468674181) (:by |yeKFqj7rX) (:id |g1eayb0P) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578468678091) (:by |yeKFqj7rX) (:id |4QIwOQAm) (:text |fs/existsSync) (:type :leaf)
                          |j $ {} (:at 1578468680180) (:by |yeKFqj7rX) (:id |UfxdSKyfL) (:text |config-path) (:type :leaf)
                      |r $ {} (:at 1578468684705) (:by |yeKFqj7rX) (:id |asCw5KS6o) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578468686915) (:by |yeKFqj7rX) (:id |asCw5KS6oleaf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1578660808765) (:by |yeKFqj7rX) (:id |Y9Hdf8y7-) (:text "|\"Not found:") (:type :leaf)
                          |r $ {} (:at 1578468701057) (:by |yeKFqj7rX) (:id |6qZVqOP-) (:text |config-path) (:type :leaf)
                      |v $ {} (:at 1578468702967) (:by |yeKFqj7rX) (:id |gmAMyu1RG) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1673283714636) (:by |yeKFqj7rX) (:id |vSTNYxcjm) (:text |js/process.exit) (:type :leaf)
                          |r $ {} (:at 1578468708048) (:by |yeKFqj7rX) (:id |dR5A9F5r) (:text |1) (:type :leaf)
                  |R $ {} (:at 1578484373695) (:by |yeKFqj7rX) (:id |GrMkat-vG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578484373695) (:by |yeKFqj7rX) (:id |cTEI5xCAn) (:text |println) (:type :leaf)
                      |j $ {} (:at 1578484373695) (:by |yeKFqj7rX) (:id |our2utKmq) (:text "|\"Running at") (:type :leaf)
                      |r $ {} (:at 1578484373695) (:by |yeKFqj7rX) (:id |thTdFJo3l) (:text |js/process.env.PWD) (:type :leaf)
                  |T $ {} (:at 1578470534623) (:by |yeKFqj7rX) (:id |-Tz4vWiI) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |wNkZzPzORT) (:text |load-config-from-file!) (:type :leaf)
                      |j $ {} (:at 1578470537064) (:by |yeKFqj7rX) (:id |pFldAMX6O) (:text |config-path) (:type :leaf)
                  |j $ {} (:at 1578470550997) (:by |yeKFqj7rX) (:id |3IZbP5tl) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578470551899) (:by |yeKFqj7rX) (:id |3IZbP5tlleaf) (:text |gaze) (:type :leaf)
                      |j $ {} (:at 1578470559041) (:by |yeKFqj7rX) (:id |3Ivrw1XE) (:text |config-path) (:type :leaf)
                      |r $ {} (:at 1578470562821) (:by |yeKFqj7rX) (:id |6ZLTdVPP) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578470563085) (:by |yeKFqj7rX) (:id |w9Lvao7j) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1578470563568) (:by |yeKFqj7rX) (:id |4OLEwOXrQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578470564375) (:by |yeKFqj7rX) (:id |ygEHNFEYj) (:text |err) (:type :leaf)
                              |j $ {} (:at 1578470567142) (:by |yeKFqj7rX) (:id |O-TFgbGS) (:text |watcher) (:type :leaf)
                          |r $ {} (:at 1578470573998) (:by |yeKFqj7rX) (:id |WTviyp69O) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1673283724223) (:by |yeKFqj7rX) (:id |WTviyp69Oleaf) (:text |.!on) (:type :leaf)
                              |j $ {} (:at 1578470576706) (:by |yeKFqj7rX) (:id |dpj0kZp1s) (:text |watcher) (:type :leaf)
                              |r $ {} (:at 1578470578197) (:by |yeKFqj7rX) (:id |cciTrKpNu) (:text "|\"changed") (:type :leaf)
                              |v $ {} (:at 1578470583146) (:by |yeKFqj7rX) (:id |z46NNR4l) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578470583487) (:by |yeKFqj7rX) (:id |wl0s6od6) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1578470583776) (:by |yeKFqj7rX) (:id |Aanso8O9m) (:type :expr)
                                    :data $ {}
                                  |r $ {} (:at 1578470584466) (:by |yeKFqj7rX) (:id |Xi3mjM1KS) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578470589307) (:by |yeKFqj7rX) (:id |Xi3mjM1KSleaf) (:text |load-config-from-file!) (:type :leaf)
                                      |j $ {} (:at 1578470593027) (:by |yeKFqj7rX) (:id |ZFv1bPLx) (:text |config-path) (:type :leaf)
          |load-config-from-file! $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |HXTYwol8p) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578470530362) (:by |yeKFqj7rX) (:id |zgW3doH0d) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |MX_YLFy7p) (:text |load-config-from-file!) (:type :leaf)
              |n $ {} (:at 1578470531433) (:by |yeKFqj7rX) (:id |P8diDD3f7) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578470532979) (:by |yeKFqj7rX) (:id |Q_32YmZc) (:text |config-path) (:type :leaf)
              |r $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |PPbAfLO-I) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |4v6-dMXid) (:text |let) (:type :leaf)
                  |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |9LbKn9fxI) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |llipjtcMr) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |zmZn3uHfN) (:text |ext) (:type :leaf)
                          |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |yESOgk2AJ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |1IwDLIEr9) (:text |path/extname) (:type :leaf)
                              |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |aYntP0hrI) (:text |config-path) (:type :leaf)
                      |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |8pE_4bBXj) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |HTxWRD3q1) (:text |content) (:type :leaf)
                          |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |IIu6xNhxI) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |aN0sLXKEY) (:text |fs/readFileSync) (:type :leaf)
                              |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |6LBOPyZYny) (:text |config-path) (:type :leaf)
                              |r $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |t4J6LZPhT6) (:text "|\"utf8") (:type :leaf)
                      |r $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |PxhznczTSv) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |t0i4k2So8w) (:text |result) (:type :leaf)
                          |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |pyudkUcmvk) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1673283578717) (:by |yeKFqj7rX) (:id |ZxXUXQnHwa) (:text |case-default) (:type :leaf)
                              |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |ejuP9_qtCW) (:text |ext) (:type :leaf)
                              |n $ {} (:at 1673283582042) (:by |yeKFqj7rX) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1673283582042) (:by |yeKFqj7rX) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1673283582042) (:by |yeKFqj7rX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1673283582042) (:by |yeKFqj7rX) (:text |println) (:type :leaf)
                                      |b $ {} (:at 1673283582042) (:by |yeKFqj7rX) (:text "|\"Unknown config file") (:type :leaf)
                                      |h $ {} (:at 1673283582042) (:by |yeKFqj7rX) (:text |config-path) (:type :leaf)
                              |r $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |qeUEMwdgJe) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |_BwZkrHB2a) (:text "|\".cirru") (:type :leaf)
                                  |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |YYm7JS3SIX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1673283631003) (:by |yeKFqj7rX) (:id |CKcJhhycSz) (:text |parse-cirru-edn) (:type :leaf)
                                      |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |mcQoXE1ylJ) (:text |content) (:type :leaf)
                      |v $ {} (:at 1579851469965) (:by |yeKFqj7rX) (:id |tB8x1JY1e) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851533720) (:by |yeKFqj7rX) (:id |tB8x1JY1eleaf) (:text |validation) (:type :leaf)
                          |j $ {} (:at 1579851486009) (:by |yeKFqj7rX) (:id |h60e5MKYV) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851497032) (:by |yeKFqj7rX) (:id |qGRen4jj) (:text |validate-lilac) (:type :leaf)
                              |j $ {} (:at 1579851505817) (:by |yeKFqj7rX) (:id |N5swIX_W) (:text |result) (:type :leaf)
                              |r $ {} (:at 1579851641412) (:by |yeKFqj7rX) (:id |qOk3i2EvV) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1579851519100) (:by |yeKFqj7rX) (:id |OvPAxS1E) (:text |lilac-router+) (:type :leaf)
                  |l $ {} (:at 1579851525741) (:by |yeKFqj7rX) (:id |0OMockl0s) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1579851526247) (:by |yeKFqj7rX) (:id |0OMockl0sleaf) (:text |if) (:type :leaf)
                      |j $ {} (:at 1579851527727) (:by |yeKFqj7rX) (:id |Z9yqsbLR) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851530128) (:by |yeKFqj7rX) (:id |HxUps4dgS) (:text |:ok?) (:type :leaf)
                          |j $ {} (:at 1579851536667) (:by |yeKFqj7rX) (:id |FhYHl9Qvi) (:text |validation) (:type :leaf)
                      |r $ {} (:at 1579851537868) (:by |yeKFqj7rX) (:id |14KMgnHy4) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851538982) (:by |yeKFqj7rX) (:id |14KMgnHy4leaf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1579851544259) (:by |yeKFqj7rX) (:id |5KKJLNvF) (:text "|\"passed validation") (:type :leaf)
                      |v $ {} (:at 1579851546738) (:by |yeKFqj7rX) (:id |Hk1dDNj0E) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851548855) (:by |yeKFqj7rX) (:id |Hk1dDNj0Eleaf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1579851716363) (:by |yeKFqj7rX) (:id |i6B-qKeCD) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1579851718842) (:by |yeKFqj7rX) (:id |EFltR-2g2) (:text |chalk/red) (:type :leaf)
                              |T $ {} (:at 1579851549911) (:by |yeKFqj7rX) (:id |gfP2noh_) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1579851553357) (:by |yeKFqj7rX) (:id |8_umeVMLd) (:text |:formatted-message) (:type :leaf)
                                  |j $ {} (:at 1579851555965) (:by |yeKFqj7rX) (:id |8kEK0xpCZ) (:text |validation) (:type :leaf)
                  |n $ {} (:at 1578470602903) (:by |yeKFqj7rX) (:id |TrT_kO18z) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578470602903) (:by |yeKFqj7rX) (:id |0gpdTBwhU) (:text |println) (:type :leaf)
                      |j $ {} (:at 1578471878310) (:by |yeKFqj7rX) (:id |qb0h9Kw8C) (:text "|\"Loaded config from") (:type :leaf)
                      |r $ {} (:at 1578470602903) (:by |yeKFqj7rX) (:id |73T7v8tZQ) (:text |config-path) (:type :leaf)
                  |r $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |Nqj4moMLmp) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |BKjKrphnKi) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |NpQBCE37yi) (:text |*configs) (:type :leaf)
                      |r $ {} (:at 1578470528279) (:by |yeKFqj7rX) (:id |Vi7IrzHMy7) (:text |result) (:type :leaf)
        :ns $ {} (:at 1580789225838) (:by |yeKFqj7rX) (:id |_4tofaVj5) (:type :expr)
          :data $ {}
            |T $ {} (:at 1580789225838) (:by |yeKFqj7rX) (:id |LQIJ38f-H) (:text |ns) (:type :leaf)
            |j $ {} (:at 1580789225838) (:by |yeKFqj7rX) (:id |0-QM1gRoN) (:text |app.config) (:type :leaf)
            |r $ {} (:at 1580789259701) (:by |yeKFqj7rX) (:id |ZjlN5JLP0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1580789261392) (:by |yeKFqj7rX) (:id |YSWaFVuT) (:text |:require) (:type :leaf)
                |j $ {} (:at 1580789262412) (:by |yeKFqj7rX) (:id |OHy2ETYL) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789263287) (:by |yeKFqj7rX) (:id |dPoGXMbKi) (:text "|\"fs") (:type :leaf)
                    |r $ {} (:at 1580789263777) (:by |yeKFqj7rX) (:id |8eqRCnBuY) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1580789264111) (:by |yeKFqj7rX) (:id |_Bcj6NmV0) (:text |fs) (:type :leaf)
                |r $ {} (:at 1580789318247) (:by |yeKFqj7rX) (:id |XktvYvUq_) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789318247) (:by |yeKFqj7rX) (:id |-HRyvwQyJ) (:text "|\"gaze") (:type :leaf)
                    |r $ {} (:at 1673283718284) (:by |yeKFqj7rX) (:id |xBNoDG72D) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1580789318247) (:by |yeKFqj7rX) (:id |Zt1XIux3i) (:text |gaze) (:type :leaf)
                |v $ {} (:at 1580789328743) (:by |yeKFqj7rX) (:id |EsHh1NYmE) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789328743) (:by |yeKFqj7rX) (:id |mOU-PqlKQ) (:text "|\"chalk") (:type :leaf)
                    |r $ {} (:at 1580789328743) (:by |yeKFqj7rX) (:id |3AOeGEJRc) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1580789328743) (:by |yeKFqj7rX) (:id |xGohyKdRz) (:text |chalk) (:type :leaf)
                |w $ {} (:at 1580789446690) (:by |yeKFqj7rX) (:id |UdhyJ48p-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789446690) (:by |yeKFqj7rX) (:id |w_Po8RURM) (:text "|\"path") (:type :leaf)
                    |r $ {} (:at 1580789446690) (:by |yeKFqj7rX) (:id |OEQsW58Wh) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1580789446690) (:by |yeKFqj7rX) (:id |6AURE4rkr) (:text |path) (:type :leaf)
                |x $ {} (:at 1580789345468) (:by |yeKFqj7rX) (:id |ocP-EEfA5) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789345468) (:by |yeKFqj7rX) (:id |9d0Cxc1bS) (:text |app.router) (:type :leaf)
                    |r $ {} (:at 1580789345468) (:by |yeKFqj7rX) (:id |WVHpJvtQG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1580789345468) (:by |yeKFqj7rX) (:id |DpELuGu6f) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1580789345468) (:by |yeKFqj7rX) (:id |LFJX8rUn4) (:text |lilac-router+) (:type :leaf)
                |y $ {} (:at 1580789357223) (:by |yeKFqj7rX) (:id |jjb180Udw) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789357223) (:by |yeKFqj7rX) (:id |2hrOR822u) (:text |lilac.core) (:type :leaf)
                    |r $ {} (:at 1580789357223) (:by |yeKFqj7rX) (:id |RVbXNbWLo) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1580789357223) (:by |yeKFqj7rX) (:id |3iFxn8zq-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1580789357223) (:by |yeKFqj7rX) (:id |UazI5hkzs) (:text |validate-lilac) (:type :leaf)
        :proc $ {} (:at 1580789225838) (:by |yeKFqj7rX) (:id |1MZPAfgtA) (:type :expr)
          :data $ {}
      |app.main $ {}
        :defs $ {}
          |*proxy $ {} (:at 1585020857871) (:by |yeKFqj7rX) (:id |3uSV8Jr2B1) (:type :expr)
            :data $ {}
              |T $ {} (:at 1673283765438) (:by |yeKFqj7rX) (:id |2yDE8cxFCg) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1673283780425) (:by |yeKFqj7rX) (:text |*proxy) (:type :leaf)
              |r $ {} (:at 1585020857871) (:by |yeKFqj7rX) (:id |_w2Pwp__R5) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1673284265985) (:by |yeKFqj7rX) (:text |.!createProxy) (:type :leaf)
                  |T $ {} (:at 1673284264545) (:by |yeKFqj7rX) (:id |ipO-ZTWFb) (:text |http-proxy) (:type :leaf)
                  |r $ {} (:at 1585020886247) (:by |yeKFqj7rX) (:id |GW8Dqdx1t) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1673283773457) (:by |yeKFqj7rX) (:id |mvaN2pF0nR) (:text |js-object) (:type :leaf)
          |handle-request! $ {} (:at 1578370584199) (:by |yeKFqj7rX) (:id |6fFB6-9DC) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578370586371) (:by |yeKFqj7rX) (:id |eZROfUkkI) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578370584199) (:by |yeKFqj7rX) (:id |Xji4YWzS6) (:text |handle-request!) (:type :leaf)
              |r $ {} (:at 1578370584199) (:by |yeKFqj7rX) (:id |z6ZZ8Ib8J) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578370587666) (:by |yeKFqj7rX) (:id |SRLWNv8Q) (:text |req) (:type :leaf)
                  |j $ {} (:at 1585020670098) (:by |yeKFqj7rX) (:id |SyqDRz2di) (:text |res) (:type :leaf)
              |v $ {} (:at 1578370864059) (:by |yeKFqj7rX) (:id |hjoJrzXiE) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1578370864706) (:by |yeKFqj7rX) (:id |xEFTYT9j) (:text |let) (:type :leaf)
                  |L $ {} (:at 1578370865099) (:by |yeKFqj7rX) (:id |JMa0lx79) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578370865258) (:by |yeKFqj7rX) (:id |M6gQ5qRl1) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578370866057) (:by |yeKFqj7rX) (:id |n8WjTJ-R0) (:text |routes) (:type :leaf)
                          |j $ {} (:at 1578370866832) (:by |yeKFqj7rX) (:id |aBjW3RGAp) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578370869606) (:by |yeKFqj7rX) (:id |lM69gApj) (:text |:routes) (:type :leaf)
                              |j $ {} (:at 1578370882223) (:by |yeKFqj7rX) (:id |C-6sTEjl) (:text |@*configs) (:type :leaf)
                      |V $ {} (:at 1585020806199) (:by |yeKFqj7rX) (:id |vxt51DYLL) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1585021020966) (:by |yeKFqj7rX) (:id |vxt51DYLLleaf) (:text |fallback-host) (:type :leaf)
                          |j $ {} (:at 1585020814866) (:by |yeKFqj7rX) (:id |nqbVSIwZ8c) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1585021019474) (:by |yeKFqj7rX) (:id |PYpYLGp246) (:text |:fallback-host) (:type :leaf)
                              |j $ {} (:at 1585020822779) (:by |yeKFqj7rX) (:id |YuauTVxIEW) (:text |@*configs) (:type :leaf)
                      |X $ {} (:at 1578472967360) (:by |yeKFqj7rX) (:id |T_EyV4Ro_) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578472999490) (:by |yeKFqj7rX) (:id |T_EyV4Ro_leaf) (:text |pathname) (:type :leaf)
                          |j $ {} (:at 1578562704366) (:by |yeKFqj7rX) (:id |kEdvWyLR) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1578562711104) (:by |yeKFqj7rX) (:id |Ney4HIjtk) (:text |first) (:type :leaf)
                              |T $ {} (:at 1578562711472) (:by |yeKFqj7rX) (:id |D1MfOQVMc) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1673283509532) (:by |yeKFqj7rX) (:id |UFYM8n4Z0) (:text |.split) (:type :leaf)
                                  |T $ {} (:at 1578472983404) (:by |yeKFqj7rX) (:id |z9UJlnsl5) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578472983404) (:by |yeKFqj7rX) (:id |wzllOYNxT) (:text |:url) (:type :leaf)
                                      |j $ {} (:at 1578472983404) (:by |yeKFqj7rX) (:id |5aeht0RCa) (:text |req) (:type :leaf)
                                  |b $ {} (:at 1578562716515) (:by |yeKFqj7rX) (:id |-vklsVUK) (:text "|\"?") (:type :leaf)
                      |b $ {} (:at 1578370962948) (:by |yeKFqj7rX) (:id |8OhFTFtg) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578370965000) (:by |yeKFqj7rX) (:id |8OhFTFtgleaf) (:text |segments) (:type :leaf)
                          |j $ {} (:at 1578372487269) (:by |yeKFqj7rX) (:id |QJk0IfqNR) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578372489650) (:by |yeKFqj7rX) (:id |QoK6Mpf4) (:text |split-path) (:type :leaf)
                              |j $ {} (:at 1578473000864) (:by |yeKFqj7rX) (:id |53o7GJET) (:text |pathname) (:type :leaf)
                      |j $ {} (:at 1578371309762) (:by |yeKFqj7rX) (:id |EIaJv9vZq) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1580795163611) (:by |yeKFqj7rX) (:id |ItESpYpF) (:text |rule-result) (:type :leaf)
                          |T $ {} (:at 1578370890505) (:by |yeKFqj7rX) (:id |UNxEiamyF) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578370894285) (:by |yeKFqj7rX) (:id |UNxEiamyFleaf) (:text |find-match-rule) (:type :leaf)
                              |b $ {} (:at 1578371009755) (:by |yeKFqj7rX) (:id |VBjGmUvK) (:text |segments) (:type :leaf)
                              |j $ {} (:at 1578370899245) (:by |yeKFqj7rX) (:id |gyW5IcKw) (:text |routes) (:type :leaf)
                      |r $ {} (:at 1578471990085) (:by |yeKFqj7rX) (:id |T7M-PVS9H) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578471990085) (:by |yeKFqj7rX) (:id |sNlOwXDvm) (:text |info) (:type :leaf)
                          |j $ {} (:at 1578471990085) (:by |yeKFqj7rX) (:id |V50m06scT) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578471990085) (:by |yeKFqj7rX) (:id |1xc7PX0Ax) (:text |get) (:type :leaf)
                              |j $ {} (:at 1580794970589) (:by |yeKFqj7rX) (:id |kwcD846_n) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1580794973446) (:by |yeKFqj7rX) (:id |JR5vhwHS) (:text |:rule) (:type :leaf)
                                  |T $ {} (:at 1578471990085) (:by |yeKFqj7rX) (:id |azAE9Nn4f) (:text |rule-result) (:type :leaf)
                              |r $ {} (:at 1578471990085) (:by |yeKFqj7rX) (:id |aVnAQFLQQ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578471990085) (:by |yeKFqj7rX) (:id |ITGBdatqF) (:text |:method) (:type :leaf)
                                  |j $ {} (:at 1578471990085) (:by |yeKFqj7rX) (:id |K6Cmm85jp) (:text |req) (:type :leaf)
                      |v $ {} (:at 1578472343588) (:by |yeKFqj7rX) (:id |M3fZhKfo6) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578472345957) (:by |yeKFqj7rX) (:id |M3fZhKfo6leaf) (:text |file-type) (:type :leaf)
                          |j $ {} (:at 1578472347324) (:by |yeKFqj7rX) (:id |0oCKXIQ8) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578472349923) (:by |yeKFqj7rX) (:id |aaQSZyeS) (:text |:type) (:type :leaf)
                              |j $ {} (:at 1578472350420) (:by |yeKFqj7rX) (:id |teVOTcMcl) (:text |info) (:type :leaf)
                      |x $ {} (:at 1673284577493) (:by |yeKFqj7rX) (:id |4rIOrMi8) (:text |:) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583306782462) (:by |yeKFqj7rX) (:id |4rIOrMi8leaf) (:text |cors-header) (:type :leaf)
                          |j $ {} (:at 1583306782877) (:by |yeKFqj7rX) (:id |AwfQg2N0f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1583306783294) (:by |yeKFqj7rX) (:id |jbSNfV_rT) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1583306783574) (:by |yeKFqj7rX) (:id |IzozH0jGJ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1583306799811) (:by |yeKFqj7rX) (:id |CiU_IUpyC) (:text "|\"Access-Control-Allow-Credentials") (:type :leaf)
                                  |j $ {} (:at 1583306800898) (:by |yeKFqj7rX) (:id |pjAfDrI0) (:text |true) (:type :leaf)
                              |n $ {} (:at 1585044126717) (:by |yeKFqj7rX) (:id |vE8K0E7xc-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585044128488) (:by |yeKFqj7rX) (:id |vE8K0E7xc-leaf) (:text "|\"Access-Control-Allow-Methods") (:type :leaf)
                                  |j $ {} (:at 1585044138848) (:by |yeKFqj7rX) (:id |4D0jLuHGQ) (:text "|\"PUT,POST,DELETE") (:type :leaf)
                              |r $ {} (:at 1583306807671) (:by |yeKFqj7rX) (:id |DYyWl6_4v) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1583306809213) (:by |yeKFqj7rX) (:id |DYyWl6_4vleaf) (:text "|\"Access-Control-Allow-Origin") (:type :leaf)
                                  |j $ {} (:at 1583724855075) (:by |yeKFqj7rX) (:id |_l94LUapy) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1583724855075) (:by |yeKFqj7rX) (:id |yxgEv-h1H) (:text |:origin) (:type :leaf)
                                      |j $ {} (:at 1583724855075) (:by |yeKFqj7rX) (:id |WJLN5ahNF) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1583724855075) (:by |yeKFqj7rX) (:id |8h8abIs7E) (:text |:headers) (:type :leaf)
                                          |j $ {} (:at 1583724855075) (:by |yeKFqj7rX) (:id |201JbtSr6) (:text |req) (:type :leaf)
                              |v $ {} (:at 1585045236549) (:by |yeKFqj7rX) (:id |vEpyQ2ge8) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585045238878) (:by |yeKFqj7rX) (:id |vEpyQ2ge8leaf) (:text "|\"Access-Control-Allow-Headers") (:type :leaf)
                                  |j $ {} (:at 1585045244665) (:by |yeKFqj7rX) (:id |_asvlUvr-) (:text "|\"Content-Type") (:type :leaf)
                  |P $ {} (:at 1578371325088) (:by |yeKFqj7rX) (:id |KJzJQ7Zd) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1578657895458) (:by |yeKFqj7rX) (:id |VZKra3Bt) (:text |;) (:type :leaf)
                      |T $ {} (:at 1578371325813) (:by |yeKFqj7rX) (:id |KJzJQ7Zdleaf) (:text |println) (:type :leaf)
                      |j $ {} (:at 1578371329393) (:by |yeKFqj7rX) (:id |tHSlEYwyl) (:text "|\"find rule") (:type :leaf)
                      |n $ {} (:at 1578473051495) (:by |yeKFqj7rX) (:id |KruCD--r) (:text |pathname) (:type :leaf)
                      |r $ {} (:at 1578371329867) (:by |yeKFqj7rX) (:id |6nd6cYSp7) (:text |rule-result) (:type :leaf)
                      |v $ {} (:at 1578657277219) (:by |yeKFqj7rX) (:id |s8-RKvZbZ) (:text |info) (:type :leaf)
                      |x $ {} (:at 1578657293804) (:by |yeKFqj7rX) (:id |HpK9JKdiT) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578657293804) (:by |yeKFqj7rX) (:id |J9QJsO5on) (:text |:method) (:type :leaf)
                          |j $ {} (:at 1578657293804) (:by |yeKFqj7rX) (:id |gDXNc-TR4) (:text |req) (:type :leaf)
                  |T $ {} (:at 1578472001253) (:by |yeKFqj7rX) (:id |XE5NN7nO) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1578472002168) (:by |yeKFqj7rX) (:id |f_IsRkyGu) (:text |cond) (:type :leaf)
                      |H $ {} (:at 1578473158554) (:by |yeKFqj7rX) (:id |-O5taiMYZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578473163160) (:by |yeKFqj7rX) (:id |6TxKkdVF) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578473158861) (:by |yeKFqj7rX) (:id |-O5taiMYZleaf) (:text |=) (:type :leaf)
                              |j $ {} (:at 1578473165911) (:by |yeKFqj7rX) (:id |I2N1jeE-C) (:text |pathname) (:type :leaf)
                              |r $ {} (:at 1578473167352) (:by |yeKFqj7rX) (:id |upL_H7NH) (:text "|\"/") (:type :leaf)
                          |j $ {} (:at 1578473171822) (:by |yeKFqj7rX) (:id |HBoHL0vIN) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578473171694) (:by |yeKFqj7rX) (:id |Be9onHMHU) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1578473172411) (:by |yeKFqj7rX) (:id |RwiNzos-7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578473173859) (:by |yeKFqj7rX) (:id |j4tpDPbK) (:text |:code) (:type :leaf)
                                  |j $ {} (:at 1578473175290) (:by |yeKFqj7rX) (:id |hZ1escdT) (:text |200) (:type :leaf)
                              |r $ {} (:at 1578473175763) (:by |yeKFqj7rX) (:id |Jjfp2Kjt5) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578473178617) (:by |yeKFqj7rX) (:id |Jjfp2Kjt5leaf) (:text |:message) (:type :leaf)
                                  |j $ {} (:at 1578473180726) (:by |yeKFqj7rX) (:id |42OhVZ8a5) (:text "|\"OK") (:type :leaf)
                              |v $ {} (:at 1578473181734) (:by |yeKFqj7rX) (:id |Ybpplxe85) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578473183353) (:by |yeKFqj7rX) (:id |Ybpplxe85leaf) (:text |:headers) (:type :leaf)
                                  |j $ {} (:at 1583306908658) (:by |yeKFqj7rX) (:id |jguz9eE6X) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1583306909811) (:by |yeKFqj7rX) (:id |cUiaKg-p) (:text |merge) (:type :leaf)
                                      |L $ {} (:at 1583306910677) (:by |yeKFqj7rX) (:id |CKubb1MDJ) (:text |cors-header) (:type :leaf)
                                      |T $ {} (:at 1580795623601) (:by |yeKFqj7rX) (:id |zHXO1RrOL) (:text |schema/json-header) (:type :leaf)
                              |x $ {} (:at 1578473188479) (:by |yeKFqj7rX) (:id |qgSlhpfB) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578473191852) (:by |yeKFqj7rX) (:id |WiY637V_) (:text |:body) (:type :leaf)
                                  |j $ {} (:at 1580795765555) (:by |yeKFqj7rX) (:id |PrJGSzMG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1580795770301) (:by |yeKFqj7rX) (:id |NL1V1Xa4e) (:text |js/JSON.stringify) (:type :leaf)
                                      |T $ {} (:at 1580795626304) (:by |yeKFqj7rX) (:id |hNWjZ_iV) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1673283883893) (:by |yeKFqj7rX) (:id |YvfnbQnBE) (:text |js-object) (:type :leaf)
                                          |L $ {} (:at 1580795627712) (:by |yeKFqj7rX) (:id |v6IOSTgB4) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1580795630369) (:by |yeKFqj7rX) (:id |pTXkxDyb) (:text |:message) (:type :leaf)
                                              |j $ {} (:at 1580795638093) (:by |yeKFqj7rX) (:id |7sE2qlQvs) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1580795638093) (:by |yeKFqj7rX) (:id |zx_dmg4Jb) (:text |str) (:type :leaf)
                                                  |j $ {} (:at 1580795638093) (:by |yeKFqj7rX) (:id |BST0wYptd) (:text "|\"This is a JSON mocking server.") (:type :leaf)
                                          |f $ {} (:at 1580795640420) (:by |yeKFqj7rX) (:id |sBBk-IXd) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1580795647071) (:by |yeKFqj7rX) (:id |sBBk-IXdleaf) (:text |:choices) (:type :leaf)
                                              |j $ {} (:at 1673283898118) (:by |yeKFqj7rX) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1673283901855) (:by |yeKFqj7rX) (:text |to-js-data) (:type :leaf)
                                                  |T $ {} (:at 1580795650606) (:by |yeKFqj7rX) (:id |mNcrl-eU) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1580795653321) (:by |yeKFqj7rX) (:id |cT_p-WsL) (:text |list-paths) (:type :leaf)
                                                      |j $ {} (:at 1580795656878) (:by |yeKFqj7rX) (:id |JReVWY4JQ) (:text |routes) (:type :leaf)
                                      |j $ {} (:at 1580795773519) (:by |yeKFqj7rX) (:id |ds5NRBdXf) (:text |nil) (:type :leaf)
                                      |r $ {} (:at 1580795773824) (:by |yeKFqj7rX) (:id |SQOyOjvcV) (:text |2) (:type :leaf)
                      |J $ {} (:at 1585044064448) (:by |yeKFqj7rX) (:id |bJxPMMvPC) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1585044069419) (:by |yeKFqj7rX) (:id |X5OsRaAAI) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1585044069645) (:by |yeKFqj7rX) (:id |bJxPMMvPCleaf) (:text |=) (:type :leaf)
                              |j $ {} (:at 1585044074531) (:by |yeKFqj7rX) (:id |SgUrKsUoT0) (:text |:options) (:type :leaf)
                              |r $ {} (:at 1585044074787) (:by |yeKFqj7rX) (:id |WmsYLacaqH) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585044075556) (:by |yeKFqj7rX) (:id |h0s7ULdOt0) (:text |:method) (:type :leaf)
                                  |j $ {} (:at 1585044076069) (:by |yeKFqj7rX) (:id |MyQamzk4xS) (:text |req) (:type :leaf)
                          |j $ {} (:at 1585044078176) (:by |yeKFqj7rX) (:id |HooJi5Ypl) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1585044078538) (:by |yeKFqj7rX) (:id |q_CA3EDV41) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1585044078818) (:by |yeKFqj7rX) (:id |htSDiJfr8e) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585044080372) (:by |yeKFqj7rX) (:id |GdTWRNWh08) (:text |:code) (:type :leaf)
                                  |j $ {} (:at 1585044081139) (:by |yeKFqj7rX) (:id |1qY-0K_REd) (:text |200) (:type :leaf)
                              |r $ {} (:at 1585044082112) (:by |yeKFqj7rX) (:id |Nqd9ju-33) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585044083768) (:by |yeKFqj7rX) (:id |Nqd9ju-33leaf) (:text |:message) (:type :leaf)
                                  |j $ {} (:at 1585044084439) (:by |yeKFqj7rX) (:id |Y844XLodi8) (:text "|\"OK") (:type :leaf)
                              |t $ {} (:at 1585044091975) (:by |yeKFqj7rX) (:id |U-97UX4tD7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585044091975) (:by |yeKFqj7rX) (:id |_MEAJ6vFMx) (:text |:headers) (:type :leaf)
                                  |j $ {} (:at 1585044091975) (:by |yeKFqj7rX) (:id |v2RLRmKOmy) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1585044091975) (:by |yeKFqj7rX) (:id |5-9V11Pg2U) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1585044091975) (:by |yeKFqj7rX) (:id |nCkEXhdXs1) (:text |cors-header) (:type :leaf)
                              |v $ {} (:at 1585044085119) (:by |yeKFqj7rX) (:id |BQJHFiGsB) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585044085988) (:by |yeKFqj7rX) (:id |BQJHFiGsBleaf) (:text |:body) (:type :leaf)
                                  |j $ {} (:at 1585044087469) (:by |yeKFqj7rX) (:id |0lydB3ae-) (:text "|\"OK") (:type :leaf)
                      |L $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |zTBJgkrWJ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |6lVbB_4of) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |7V4EAPxer) (:text |=) (:type :leaf)
                              |j $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |tz4xsunft) (:text |pathname) (:type :leaf)
                              |r $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |f0bGanFJK) (:text "|\"/favicon.ico") (:type :leaf)
                          |j $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |OuhcWZD5J) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |GxKJrdBWB) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |UGihDXX2e) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |yC3vVVK96) (:text |:code) (:type :leaf)
                                  |j $ {} (:at 1580788603204) (:by |yeKFqj7rX) (:id |fPWjdgOgU) (:text |301) (:type :leaf)
                              |v $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |uIT8T2Fxe) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578473105981) (:by |yeKFqj7rX) (:id |k9hLKeHz_k) (:text |:headers) (:type :leaf)
                                  |j $ {} (:at 1580788629347) (:by |yeKFqj7rX) (:id |hX7A4wpa) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1580788629825) (:by |yeKFqj7rX) (:id |jSn0FSMK-8) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1580788631039) (:by |yeKFqj7rX) (:id |iSlkV3fY1) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1580788633265) (:by |yeKFqj7rX) (:id |k3o-k0Zo) (:text |:Location) (:type :leaf)
                                          |j $ {} (:at 1580788633974) (:by |yeKFqj7rX) (:id |A-agAhTbd) (:text "|\"http://cdn.tiye.me/logo/jimeng-360x360.png") (:type :leaf)
                      |T $ {} (:at 1578376332301) (:by |yeKFqj7rX) (:id |gzXwU_br) (:type :expr)
                        :data $ {}
                          |L $ {} (:at 1585044232818) (:by |yeKFqj7rX) (:id |zeqOyhRjX) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1585044233487) (:by |yeKFqj7rX) (:id |wGw4U6YMM) (:text |or) (:type :leaf)
                              |T $ {} (:at 1580794983803) (:by |yeKFqj7rX) (:id |IfjwTmoFQ) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1580794985795) (:by |yeKFqj7rX) (:id |YbbaKSR_) (:text |not) (:type :leaf)
                                  |T $ {} (:at 1578376336547) (:by |yeKFqj7rX) (:id |wtjWbsZA) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1580794983208) (:by |yeKFqj7rX) (:id |Uzyk8U0sA) (:text |:ok?) (:type :leaf)
                                      |j $ {} (:at 1578376339911) (:by |yeKFqj7rX) (:id |BdZw33M9j) (:text |rule-result) (:type :leaf)
                              |j $ {} (:at 1585044235459) (:by |yeKFqj7rX) (:id |o_40KP22W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585044236321) (:by |yeKFqj7rX) (:id |YwgYo6ByYl) (:text |nil?) (:type :leaf)
                                  |j $ {} (:at 1585044237995) (:by |yeKFqj7rX) (:id |3BjWxOE5Of) (:text |info) (:type :leaf)
                          |T $ {} (:at 1585020800843) (:by |yeKFqj7rX) (:id |bks2wCpHQT) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1585020801581) (:by |yeKFqj7rX) (:id |Q0b7xCk0J) (:text |if) (:type :leaf)
                              |L $ {} (:at 1585020828034) (:by |yeKFqj7rX) (:id |6i2Pa3pE3O) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585020828799) (:by |yeKFqj7rX) (:id |t1On_p88mA) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1585021026338) (:by |yeKFqj7rX) (:id |htV62UHcBR) (:text |fallback-host) (:type :leaf)
                              |P $ {} (:at 1585020927590) (:by |yeKFqj7rX) (:id |l2-Z5OGQZx) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1585020928116) (:by |yeKFqj7rX) (:id |x1RnXKMgHH) (:text |do) (:type :leaf)
                                  |L $ {} (:at 1585021145680) (:by |yeKFqj7rX) (:id |wl7p556Rmo) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1585021146845) (:by |yeKFqj7rX) (:id |4Gxn32emGH) (:text |println) (:type :leaf)
                                      |T $ {} (:at 1585020933943) (:by |yeKFqj7rX) (:id |BkaWxRDpj2) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1673284871878) (:by |yeKFqj7rX) (:text |.!gray) (:type :leaf)
                                          |T $ {} (:at 1673284870057) (:by |yeKFqj7rX) (:id |f4x5-dChg) (:text |chalk) (:type :leaf)
                                          |j $ {} (:at 1585020956420) (:by |yeKFqj7rX) (:id |8b15C7cdkP) (:text "|\"proxy to") (:type :leaf)
                                          |r $ {} (:at 1585021027479) (:by |yeKFqj7rX) (:id |fCA8Wh_hF4) (:text |fallback-host) (:type :leaf)
                                          |v $ {} (:at 1585020964131) (:by |yeKFqj7rX) (:id |L5c8cQ0rFq) (:text |pathname) (:type :leaf)
                                  |T $ {} (:at 1596168598738) (:by |yeKFqj7rX) (:id |Slh67xrdJ0) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1596168600607) (:by |yeKFqj7rX) (:id |NyCIcje0UF) (:text |try) (:type :leaf)
                                      |T $ {} (:at 1585020831321) (:by |yeKFqj7rX) (:id |n3QrVGYuNr) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1673283791816) (:by |yeKFqj7rX) (:id |dNpY1cJlv) (:text |.!web) (:type :leaf)
                                          |T $ {} (:at 1673283813612) (:by |yeKFqj7rX) (:id |n3QrVGYuNrleaf) (:text |@*proxy) (:type :leaf)
                                          |j $ {} (:at 1585020902088) (:by |yeKFqj7rX) (:id |QiE6sLuFf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1585020906233) (:by |yeKFqj7rX) (:id |0OASKy2i8V) (:text |:original-request) (:type :leaf)
                                              |j $ {} (:at 1585020906868) (:by |yeKFqj7rX) (:id |psV80FUn1g) (:text |req) (:type :leaf)
                                          |r $ {} (:at 1585020909229) (:by |yeKFqj7rX) (:id |g1TxslfLoA) (:text |res) (:type :leaf)
                                          |v $ {} (:at 1585020915172) (:by |yeKFqj7rX) (:id |T5npvKrdQ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1673283916725) (:by |yeKFqj7rX) (:id |Z5HCSiiTGr) (:text |js-object) (:type :leaf)
                                              |j $ {} (:at 1585020915766) (:by |yeKFqj7rX) (:id |2tU8h6qYm_) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1585020917330) (:by |yeKFqj7rX) (:id |0dT41NG6IO) (:text |:target) (:type :leaf)
                                                  |j $ {} (:at 1585021028627) (:by |yeKFqj7rX) (:id |tXO7q26P8s) (:text |fallback-host) (:type :leaf)
                                      |j $ {} (:at 1596168601275) (:by |yeKFqj7rX) (:id |BTLsWSjgN6) (:type :expr)
                                        :data $ {}
                                          |j $ {} (:at 1673283798415) (:by |yeKFqj7rX) (:id |BXXhu2Yxjp) (:text |fn) (:type :leaf)
                                          |r $ {} (:at 1673283798916) (:by |yeKFqj7rX) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1596168607493) (:by |yeKFqj7rX) (:id |kQn1Vn4tde) (:text |err) (:type :leaf)
                                          |v $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |p1W-5YiFU6) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |kroXtFW7Va) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |TS2tzZS2gc) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |Zrrjet6rA-) (:text |:code) (:type :leaf)
                                                  |j $ {} (:at 1596168618033) (:by |yeKFqj7rX) (:id |Bphg_9s7s-) (:text |500) (:type :leaf)
                                              |r $ {} (:at 1596168623490) (:by |yeKFqj7rX) (:id |hrTDXoZf6U) (:text "|\"Fa") (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |WLzRpjl1C8) (:text |:message) (:type :leaf)
                                                  |j $ {} (:at 1596168643332) (:by |yeKFqj7rX) (:id |-eaPpNRY0P) (:text "|\"Failed to access fallback host") (:type :leaf)
                                              |v $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |nlj9DqXHZE) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |ua7--GjUMp) (:text |:headers) (:type :leaf)
                                                  |j $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |MbmEfHIH0h) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |w7YwVeCzEQ) (:text |merge) (:type :leaf)
                                                      |j $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |Hj26sjSOWU) (:text |cors-header) (:type :leaf)
                                                      |r $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |05GOOjMEIz) (:text |schema/json-header) (:type :leaf)
                                              |x $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |a4AksXWB4_) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1596168615132) (:by |yeKFqj7rX) (:id |8dfWdRfIezS) (:text |:body) (:type :leaf)
                                                  |j $ {} (:at 1596168620680) (:by |yeKFqj7rX) (:id |LVo4-fz7p) (:text |err) (:type :leaf)
                                  |j $ {} (:at 1585020931835) (:by |yeKFqj7rX) (:id |1Tsyq_mHXX) (:text |:effect) (:type :leaf)
                              |T $ {} (:at 1578472721663) (:by |yeKFqj7rX) (:id |rMsqpdQxU) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1578472722194) (:by |yeKFqj7rX) (:id |p0spSBxJo) (:text |do) (:type :leaf)
                                  |L $ {} (:at 1578472722721) (:by |yeKFqj7rX) (:id |9KmR2oQdb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578472722721) (:by |yeKFqj7rX) (:id |mVckKF_xR) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1578544203944) (:by |yeKFqj7rX) (:id |07NOm8LqA) (:text |404) (:type :leaf)
                                      |r $ {} (:at 1578473017380) (:by |yeKFqj7rX) (:id |0YJNhQMeX) (:text |pathname) (:type :leaf)
                                  |T $ {} (:at 1578370592515) (:by |yeKFqj7rX) (:id |gw2VGpXk) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578370595925) (:by |yeKFqj7rX) (:id |gw2VGpXkleaf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1578370705809) (:by |yeKFqj7rX) (:id |ve-tECIbY) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1578370706294) (:by |yeKFqj7rX) (:id |O_lFLT8eg) (:text |:code) (:type :leaf)
                                          |j $ {} (:at 1578544202165) (:by |yeKFqj7rX) (:id |C7rM_Bkyg) (:text |400) (:type :leaf)
                                      |r $ {} (:at 1578370707684) (:by |yeKFqj7rX) (:id |PEVB_3a3a) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1578370709868) (:by |yeKFqj7rX) (:id |PEVB_3a3aleaf) (:text |:message) (:type :leaf)
                                          |j $ {} (:at 1578472183798) (:by |yeKFqj7rX) (:id |9BqKeASO) (:text "|\"Not matching") (:type :leaf)
                                      |t $ {} (:at 1578370771194) (:by |yeKFqj7rX) (:id |UEGtmoSb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1578370773850) (:by |yeKFqj7rX) (:id |UEGtmoSbleaf) (:text |:headers) (:type :leaf)
                                          |j $ {} (:at 1583306904670) (:by |yeKFqj7rX) (:id |jqQy96Uj3) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1583306905681) (:by |yeKFqj7rX) (:id |BP5mkSMgb) (:text |merge) (:type :leaf)
                                              |L $ {} (:at 1583306906055) (:by |yeKFqj7rX) (:id |A949o2l09) (:text |cors-header) (:type :leaf)
                                              |T $ {} (:at 1580795027886) (:by |yeKFqj7rX) (:id |Qr0odVMSF) (:text |schema/json-header) (:type :leaf)
                                      |v $ {} (:at 1578370714305) (:by |yeKFqj7rX) (:id |tPf1_h-9H) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1578370719589) (:by |yeKFqj7rX) (:id |tPf1_h-9Hleaf) (:text |:body) (:type :leaf)
                                          |j $ {} (:at 1580795124272) (:by |yeKFqj7rX) (:id |6GfDNwWct) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1580795130663) (:by |yeKFqj7rX) (:id |0QPFqOedX) (:text |js/JSON.stringify) (:type :leaf)
                                              |T $ {} (:at 1580795106262) (:by |yeKFqj7rX) (:id |QAtJIiDH1) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1673283925066) (:by |yeKFqj7rX) (:id |1COoxyLqz) (:text |js-object) (:type :leaf)
                                                  |T $ {} (:at 1580795038176) (:by |yeKFqj7rX) (:id |x5G817nY) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1580795049110) (:by |yeKFqj7rX) (:id |JkWNufPuQ) (:text |:message) (:type :leaf)
                                                      |T $ {} (:at 1578472439716) (:by |yeKFqj7rX) (:id |uttzVbbfm) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1578472439716) (:by |yeKFqj7rX) (:id |T6JvrhBYG) (:text |str) (:type :leaf)
                                                          |j $ {} (:at 1578472439716) (:by |yeKFqj7rX) (:id |i1RciV1No) (:text "|\"No matching path for ") (:type :leaf)
                                                          |r $ {} (:at 1578472995614) (:by |yeKFqj7rX) (:id |inW-grIu) (:text |pathname) (:type :leaf)
                                                  |b $ {} (:at 1580795049621) (:by |yeKFqj7rX) (:id |9eDmfIaHC) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1580795051939) (:by |yeKFqj7rX) (:id |9eDmfIaHCleaf) (:text |:reason) (:type :leaf)
                                                      |j $ {} (:at 1673283926943) (:by |yeKFqj7rX) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1673283930006) (:by |yeKFqj7rX) (:text |to-js-data) (:type :leaf)
                                                          |T $ {} (:at 1580795057554) (:by |yeKFqj7rX) (:id |1pRjOIJP) (:text |rule-result) (:type :leaf)
                                              |j $ {} (:at 1580795134368) (:by |yeKFqj7rX) (:id |jKWOJM68) (:text |nil) (:type :leaf)
                                              |r $ {} (:at 1580795135076) (:by |yeKFqj7rX) (:id |AwkuZU5pe) (:text |2) (:type :leaf)
                      |b $ {} (:at 1578472310526) (:by |yeKFqj7rX) (:id |u9UUW4uH) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578472317153) (:by |yeKFqj7rX) (:id |Vh8-t-sn) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578659631950) (:by |yeKFqj7rX) (:id |u9UUW4uHleaf) (:text |file?) (:type :leaf)
                              |r $ {} (:at 1578472354827) (:by |yeKFqj7rX) (:id |S8aNDPbo-) (:text |file-type) (:type :leaf)
                          |j $ {} (:at 1596166958097) (:by |yeKFqj7rX) (:id |FfM-Pt7Hn) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1596166959208) (:by |yeKFqj7rX) (:id |nuD7BoYiAY) (:text |fn) (:type :leaf)
                              |L $ {} (:at 1596166960660) (:by |yeKFqj7rX) (:id |DY0RtsLEip) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1596166961344) (:by |yeKFqj7rX) (:id |euxcYu2dxt) (:text |send!) (:type :leaf)
                              |T $ {} (:at 1578472331537) (:by |yeKFqj7rX) (:id |YhV-1A3_X) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578472331537) (:by |yeKFqj7rX) (:id |Pur8NWGEc) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1578472331537) (:by |yeKFqj7rX) (:id |APzqew_d6) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578472331537) (:by |yeKFqj7rX) (:id |cXbb-XZcZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1578472331537) (:by |yeKFqj7rX) (:id |3FC4Ce9m4) (:text |mock-path) (:type :leaf)
                                          |j $ {} (:at 1578472331537) (:by |yeKFqj7rX) (:id |igNZ2R9FC) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1578472331537) (:by |yeKFqj7rX) (:id |q2wR1SAGx) (:text |:file) (:type :leaf)
                                              |j $ {} (:at 1578472331537) (:by |yeKFqj7rX) (:id |PsNSEJ4gm) (:text |info) (:type :leaf)
                                  |n $ {} (:at 1596166987476) (:by |yeKFqj7rX) (:id |d9Y3em5IqA) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1596166987476) (:by |yeKFqj7rX) (:id |ADiFL8wh6F) (:text |fs/access) (:type :leaf)
                                      |j $ {} (:at 1596166987476) (:by |yeKFqj7rX) (:id |PQ-vgEmKl9) (:text |mock-path) (:type :leaf)
                                      |r $ {} (:at 1596166995026) (:by |yeKFqj7rX) (:id |gya1mhniWR) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1596166995536) (:by |yeKFqj7rX) (:id |TU-5JpRBDk) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1596166995899) (:by |yeKFqj7rX) (:id |D1uC_nJhWO) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1596166996963) (:by |yeKFqj7rX) (:id |tELRbMb0W2) (:text |err) (:type :leaf)
                                          |r $ {} (:at 1596166999324) (:by |yeKFqj7rX) (:id |BoVyHBC_y) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1596167002144) (:by |yeKFqj7rX) (:id |BoVyHBC_yleaf) (:text |if) (:type :leaf)
                                              |j $ {} (:at 1596167002750) (:by |yeKFqj7rX) (:id |DfFVIIi5FT) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1596167003687) (:by |yeKFqj7rX) (:id |YFbHqZ8g13) (:text |some?) (:type :leaf)
                                                  |j $ {} (:at 1596167004862) (:by |yeKFqj7rX) (:id |gbEppRpMa) (:text |err) (:type :leaf)
                                              |n $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |9S24MsCKuO) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |OTu1nZrNef) (:text |do) (:type :leaf)
                                                  |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |TRRemo1NLy) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |VvIAX031_g) (:text |println) (:type :leaf)
                                                      |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |wnO-nMIY_V) (:text "|\"Need file") (:type :leaf)
                                                      |r $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |4YtMlR1VFe) (:text |mock-path) (:type :leaf)
                                                  |r $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |VKd1gHNgvb) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |CNLilwqcq4) (:text |send!) (:type :leaf)
                                                      |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |XOtUUI7SKq) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |ioVMOxN608) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |KT24yQyFO8) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |ZXx4BClk4Y) (:text |:code) (:type :leaf)
                                                              |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |PNLV6bRSAF) (:text |404) (:type :leaf)
                                                          |r $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |FUTxmApcuy) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |ZefE2BB8SW) (:text |:message) (:type :leaf)
                                                              |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |24w7QykDr5f) (:text "|\"Unknown request") (:type :leaf)
                                                          |v $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |EkRiaYVHzyS) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |wKdP1rl2s_V) (:text |:headers) (:type :leaf)
                                                              |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |aJk5EHwDcvh) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |GYxWjJRNKq9) (:text |merge) (:type :leaf)
                                                                  |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |9WQJz2ga5He) (:text |cors-header) (:type :leaf)
                                                                  |r $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |F6dK9TkQzJT) (:text |schema/html-header) (:type :leaf)
                                                          |x $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |rTkU9Vl7dlE) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |7nDJrH5hnbB) (:text |:body) (:type :leaf)
                                                              |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |YgHmIJB8NQT) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |iVf5kgpZuwG) (:text |str) (:type :leaf)
                                                                  |j $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |xLn0ezBvq4W) (:text |mock-path) (:type :leaf)
                                                                  |r $ {} (:at 1596168929094) (:by |yeKFqj7rX) (:id |wZM50Pb3UIH) (:text "|\" not found") (:type :leaf)
                                              |v $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |cPCpk7izrS) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |fbKa5i-aDL) (:text |do) (:type :leaf)
                                                  |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |e3aRTBeS0l) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |T3eSEgPLJX) (:text |println) (:type :leaf)
                                                      |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |VlIfkid77P) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1673284877736) (:by |yeKFqj7rX) (:text |.!gray) (:type :leaf)
                                                          |T $ {} (:at 1673284876044) (:by |yeKFqj7rX) (:id |1CLlPcJ3gf) (:text |chalk) (:type :leaf)
                                                          |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |rdo7FbzXUx) (:text "|\"sending") (:type :leaf)
                                                          |r $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |gBW1l8yzaP) (:text |mock-path) (:type :leaf)
                                                          |v $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |6rbeo1G1BC) (:text "|\"to") (:type :leaf)
                                                          |x $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |WWJpGYD7P3) (:text |pathname) (:type :leaf)
                                                  |r $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |IOF-_aFeSl) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |9u5cqTnr0N) (:text |delay!) (:type :leaf)
                                                      |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |Cgt_8BTJDli) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |A1np0M9caAl) (:text |or) (:type :leaf)
                                                          |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |KHjU7v4g7EX) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |c2p1MZigCLb) (:text |:delay) (:type :leaf)
                                                              |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |BG8oKiS4xUL) (:text |info) (:type :leaf)
                                                          |r $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |CROdRciR5sQ) (:text |0) (:type :leaf)
                                                      |r $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |lj2fyxOTM-K) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |5ZPA1FfopgP) (:text |fn) (:type :leaf)
                                                          |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |ANZkpmMLaO_) (:type :expr)
                                                            :data $ {}
                                                          |r $ {} (:at 1596167085622) (:by |yeKFqj7rX) (:id |Es1oCrC5g) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1596167089408) (:by |yeKFqj7rX) (:id |9X7yGImNEz) (:text |fs/readFile) (:type :leaf)
                                                              |L $ {} (:at 1596167108891) (:by |yeKFqj7rX) (:id |-KThRNZzLC) (:text |mock-path) (:type :leaf)
                                                              |P $ {} (:at 1596167125866) (:by |yeKFqj7rX) (:id |8UDLEwaOcR) (:text "|\"utf8") (:type :leaf)
                                                              |T $ {} (:at 1596167111834) (:by |yeKFqj7rX) (:id |YEorugccCl) (:type :expr)
                                                                :data $ {}
                                                                  |D $ {} (:at 1596167114056) (:by |yeKFqj7rX) (:id |sX_5M63EM) (:text |fn) (:type :leaf)
                                                                  |L $ {} (:at 1596167114348) (:by |yeKFqj7rX) (:id |StMBtv2tRj) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1596167115877) (:by |yeKFqj7rX) (:id |QcPwQy9mp) (:text |err) (:type :leaf)
                                                                      |j $ {} (:at 1596167121896) (:by |yeKFqj7rX) (:id |qaYuyIplB) (:text |content) (:type :leaf)
                                                                  |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |Jg1EfnPMnys) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |IgvRlgPwadN) (:text |send!) (:type :leaf)
                                                                      |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |Q8BV53Nrm3L) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |VMsetxKvbrx) (:text |{}) (:type :leaf)
                                                                          |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |H0nLryZRflG) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |SpldEemaQ2R) (:text |:code) (:type :leaf)
                                                                              |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |VeMdVYh0uUo) (:type :expr)
                                                                                :data $ {}
                                                                                  |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |c37HjNzDlpt) (:text |or) (:type :leaf)
                                                                                  |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |aS2LCIMe1xG) (:type :expr)
                                                                                    :data $ {}
                                                                                      |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |CrhGiWLcWhg) (:text |:code) (:type :leaf)
                                                                                      |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |NNBMVKK-QIn) (:text |info) (:type :leaf)
                                                                                  |r $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |lw0NYbNZaV3) (:text |200) (:type :leaf)
                                                                          |r $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |8AWBQiY-o1c) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |TMZzrua0_f2) (:text |:message) (:type :leaf)
                                                                              |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |S47WPzL58a0) (:text "|\"OK") (:type :leaf)
                                                                          |v $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |or1AwjT8hPy) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |swms84JD4H9) (:text |:headers) (:type :leaf)
                                                                              |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |FYxnLLRIwfr) (:type :expr)
                                                                                :data $ {}
                                                                                  |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |39RohPihIFq) (:text |merge) (:type :leaf)
                                                                                  |j $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |Lnykww5nS4O) (:text |cors-header) (:type :leaf)
                                                                                  |r $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |764MCbns7PQ) (:text |schema/json-header) (:type :leaf)
                                                                          |x $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |Y6jvg9VFzcI) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1596167057987) (:by |yeKFqj7rX) (:id |CROV713UQj5) (:text |:body) (:type :leaf)
                                                                              |j $ {} (:at 1596167131662) (:by |yeKFqj7rX) (:id |u-7Ui6d9P0) (:text |content) (:type :leaf)
                      |r $ {} (:at 1578472030421) (:by |yeKFqj7rX) (:id |53j_5UNZ) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1673283962128) (:by |yeKFqj7rX) (:id |iahopEI0w) (:text |true) (:type :leaf)
                          |T $ {} (:at 1578472557971) (:by |yeKFqj7rX) (:id |SxXguQUDY) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1578472558685) (:by |yeKFqj7rX) (:id |SfN__-tV) (:text |do) (:type :leaf)
                              |L $ {} (:at 1578472559056) (:by |yeKFqj7rX) (:id |GoFnEyfad) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585021140908) (:by |yeKFqj7rX) (:id |TnJ76utXz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1578472575447) (:by |yeKFqj7rX) (:id |kkF4RIBGq) (:text "|\"Bad result for rule") (:type :leaf)
                                  |l $ {} (:at 1578473008389) (:by |yeKFqj7rX) (:id |Ekrs7WYm) (:text |pathname) (:type :leaf)
                                  |n $ {} (:at 1578472591646) (:by |yeKFqj7rX) (:id |uHakfILh) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578472592538) (:by |yeKFqj7rX) (:id |wt00wjSBh) (:text |:method) (:type :leaf)
                                      |j $ {} (:at 1578472593505) (:by |yeKFqj7rX) (:id |SPzukdZ3) (:text |req) (:type :leaf)
                                  |r $ {} (:at 1578472577107) (:by |yeKFqj7rX) (:id |_tdPx9B1) (:text |info) (:type :leaf)
                              |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |UOeoY2fNY) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |ekrRrlhGd) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |L924u9Rpa) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |0iozFdKiV) (:text |:code) (:type :leaf)
                                      |j $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |p5TJ62dHt) (:text |400) (:type :leaf)
                                  |r $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |GT83rhndd) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |XB5T6uQQy) (:text |:message) (:type :leaf)
                                      |j $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |pCJRZZWEP) (:text "|\"Unknown request") (:type :leaf)
                                  |v $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |gC2rHYRHC) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |SNiOsKomW) (:text |:headers) (:type :leaf)
                                      |j $ {} (:at 1583306891699) (:by |yeKFqj7rX) (:id |DpzSmVkQo) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1583306892729) (:by |yeKFqj7rX) (:id |XfT6xP3iJ) (:text |merge) (:type :leaf)
                                          |L $ {} (:at 1583306893153) (:by |yeKFqj7rX) (:id |YhrDL7TTN) (:text |cors-header) (:type :leaf)
                                          |T $ {} (:at 1580789077302) (:by |yeKFqj7rX) (:id |z7680rVml) (:text |schema/json-header) (:type :leaf)
                                  |x $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |iPGB1rAcdF) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |gYsvlDv2ym) (:text |:body) (:type :leaf)
                                      |j $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |nw1IV5FEmt) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1673283951256) (:by |yeKFqj7rX) (:id |jtIodomSy2) (:text |js-object) (:type :leaf)
                                          |j $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |ZBcKbOqJuy) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |plGQYBRwtn) (:text |:code) (:type :leaf)
                                              |j $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |LeaOlxDlAX) (:text |400) (:type :leaf)
                                          |r $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |TLRPmr1PfC) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |tVfi0QpoYZ) (:text |:message) (:type :leaf)
                                              |j $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |CsJ4sgG-dM) (:text "|\"Unknown rule") (:type :leaf)
                                          |v $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |1VuBwST_L7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |q2v0J8MVtE) (:text |:rule) (:type :leaf)
                                              |j $ {} (:at 1673283952797) (:by |yeKFqj7rX) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1673283954658) (:by |yeKFqj7rX) (:text |to-js-data) (:type :leaf)
                                                  |T $ {} (:at 1580794993772) (:by |yeKFqj7rX) (:id |n6iIAfqn6) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1580794996170) (:by |yeKFqj7rX) (:id |zD94DiKl) (:text |:rule) (:type :leaf)
                                                      |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |7SFcg8XSNc) (:text |rule-result) (:type :leaf)
                                          |x $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |EXROG4TVr7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |gD64S3zYv9) (:text |:info) (:type :leaf)
                                              |j $ {} (:at 1673283955771) (:by |yeKFqj7rX) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1673283959918) (:by |yeKFqj7rX) (:text |to-js-data) (:type :leaf)
                                                  |T $ {} (:at 1578472122126) (:by |yeKFqj7rX) (:id |v_ejmM6kff) (:text |info) (:type :leaf)
          |main! $ {} (:at 1534483214794) (:by |yeKFqj7rX) (:id |SWvtON639q) (:type :expr)
            :data $ {}
              |T $ {} (:at 1534483214794) (:by |yeKFqj7rX) (:id |0OZDgsAOvf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1534483214794) (:by |yeKFqj7rX) (:id |mI-t3ViWvV) (:text |main!) (:type :leaf)
              |r $ {} (:at 1534483214794) (:by |yeKFqj7rX) (:id |lP6uJuLIHa) (:type :expr)
                :data $ {}
              |x $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |hSvhovZNZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |pAew9DAXp) (:text |;) (:type :leaf)
                  |j $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |aSKJcQrUq) (:text |println) (:type :leaf)
                  |r $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |OPaVCd9AQ) (:text |@*configs) (:type :leaf)
              |y $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |OJYSOYFzb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |QJKidbhYe) (:text |load-config!) (:type :leaf)
              |yT $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |rNUngIOyR) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |EDZiA2Ryb) (:text |skir/create-server!) (:type :leaf)
                  |j $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |lsEt4w8Di) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1673283741208) (:by |yeKFqj7rX) (:id |2yuVag5Eq) (:text |fn) (:type :leaf)
                      |f $ {} (:at 1673283742720) (:by |yeKFqj7rX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1673283744899) (:by |yeKFqj7rX) (:text |a) (:type :leaf)
                          |b $ {} (:at 1673283745577) (:by |yeKFqj7rX) (:text |b) (:type :leaf)
                      |j $ {} (:at 1673284685735) (:by |yeKFqj7rX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |10Z8aN0GWr) (:text |handle-request!) (:type :leaf)
                          |b $ {} (:at 1673284687360) (:by |yeKFqj7rX) (:text |a) (:type :leaf)
                          |h $ {} (:at 1673284687623) (:by |yeKFqj7rX) (:text |b) (:type :leaf)
                  |r $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |j8S8dZxTUI) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |idWuoPXnW_) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |XhIBbOM_Cp) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578471812871) (:by |yeKFqj7rX) (:id |kCds-oLwWf) (:text |:port) (:type :leaf)
                          |j $ {} (:at 1578473696838) (:by |yeKFqj7rX) (:id |KgCjlU-3L) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578473698958) (:by |yeKFqj7rX) (:id |jpPgYDEiJa) (:text |or) (:type :leaf)
                              |j $ {} (:at 1578473699477) (:by |yeKFqj7rX) (:id |hnFCh4Spq) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578473699910) (:by |yeKFqj7rX) (:id |zSHgUSrFF) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1578473702788) (:by |yeKFqj7rX) (:id |DYYcUUp1U) (:text |@*configs) (:type :leaf)
                              |r $ {} (:at 1578473705260) (:by |yeKFqj7rX) (:id |y1snNjo5n) (:text |7800) (:type :leaf)
              |yj $ {} (:at 1578543731899) (:by |yeKFqj7rX) (:id |R_aF8U2vT) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578543731899) (:by |yeKFqj7rX) (:id |ykwGUoqRh) (:text |check-version!) (:type :leaf)
          |on-proxy-error $ {} (:at 1596169352540) (:by |yeKFqj7rX) (:id |DZ0Oo5Heqg) (:type :expr)
            :data $ {}
              |T $ {} (:at 1596169394848) (:by |yeKFqj7rX) (:id |AyQ2Sa88_6) (:text |defn) (:type :leaf)
              |j $ {} (:at 1596169352540) (:by |yeKFqj7rX) (:id |iXbc5z3atw) (:text |on-proxy-error) (:type :leaf)
              |r $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |Lw5EjtV3N2) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |36s06G1l_g) (:text |err) (:type :leaf)
                  |j $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |y5KU0bNqxS) (:text |req) (:type :leaf)
                  |r $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |W8D7qLtuIw) (:text |res) (:type :leaf)
              |v $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |UqOQibEQIm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |0aFyEsNu99) (:text |js/console.log) (:type :leaf)
                  |j $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |K3EzCYRj8G) (:text |err) (:type :leaf)
              |x $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |PFWQtfaIZa) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |m8BVdJrUu-) (:text |.end) (:type :leaf)
                  |j $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |KHCN8WGjy0) (:text |res) (:type :leaf)
                  |r $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |LC2l-WMW26) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |DHgWNYwlB0) (:text |str) (:type :leaf)
                      |j $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |hBKIuflKjGX) (:text "|\"No path matched: ") (:type :leaf)
                      |r $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |14jZ6FU2-0G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |mn0Y3ChZZY3) (:text |.-url) (:type :leaf)
                          |j $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |54PWfU-YPmN) (:text |req) (:type :leaf)
                      |v $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |Z-oHiyW3TxB) (:text |\newline) (:type :leaf)
                      |x $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |okv7An-W8ZZ) (:text |\newline) (:type :leaf)
                      |y $ {} (:at 1596169355432) (:by |yeKFqj7rX) (:id |BKkQO-VT96I) (:text |err) (:type :leaf)
          |reload! $ {} (:at 1534483216569) (:by |yeKFqj7rX) (:id |-BOhJzActg) (:type :expr)
            :data $ {}
              |T $ {} (:at 1534483216569) (:by |yeKFqj7rX) (:id |78G4OkYMQ2) (:text |defn) (:type :leaf)
              |j $ {} (:at 1534483216569) (:by |yeKFqj7rX) (:id |uDkGHYSsJo) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1534483216569) (:by |yeKFqj7rX) (:id |Lpt5qqH2Vl) (:type :expr)
                :data $ {}
              |wT $ {} (:at 1534483228056) (:by |yeKFqj7rX) (:id |nvVffdJ4rl) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1534483228922) (:by |yeKFqj7rX) (:id |_PKSES8fGyleaf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1578473687286) (:by |yeKFqj7rX) (:id |EGqaOPxjzt) (:text "|\"Reloaded.") (:type :leaf)
        :ns $ {} (:at 1534483212338) (:by |yeKFqj7rX) (:id |WD4drWEfD9) (:type :expr)
          :data $ {}
            |T $ {} (:at 1534483212338) (:by |yeKFqj7rX) (:id |jeg5aDS4Wa) (:text |ns) (:type :leaf)
            |j $ {} (:at 1534483212338) (:by |yeKFqj7rX) (:id |Hvc4wCBXc4) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1534483679032) (:by |yeKFqj7rX) (:id |nGyImxkqpB) (:type :expr)
              :data $ {}
                |T $ {} (:at 1534483683346) (:by |yeKFqj7rX) (:id |pV7hKeldu) (:text |:require) (:type :leaf)
                |j $ {} (:at 1534483683751) (:by |yeKFqj7rX) (:id |UfQ9FrTxjD) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1578370551544) (:by |yeKFqj7rX) (:id |u5MLSbZcR) (:text |skir.core) (:type :leaf)
                    |r $ {} (:at 1534483751588) (:by |yeKFqj7rX) (:id |kavANajv7e) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1578370561069) (:by |yeKFqj7rX) (:id |MwQpPE-Ti) (:text |skir) (:type :leaf)
                |r $ {} (:at 1578370397321) (:by |yeKFqj7rX) (:id |uK0HTvLzI) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1673197146915) (:by |yeKFqj7rX) (:id |TMUtVqxYt) (:text "|\"node:fs") (:type :leaf)
                    |r $ {} (:at 1578370400725) (:by |yeKFqj7rX) (:id |-4iTKKP5m) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1578370401090) (:by |yeKFqj7rX) (:id |QOumKb7GW) (:text |fs) (:type :leaf)
                |v $ {} (:at 1578370402014) (:by |yeKFqj7rX) (:id |Pd60fq7jV) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1673197149575) (:by |yeKFqj7rX) (:id |LEQElp9vO) (:text "|\"node:path") (:type :leaf)
                    |r $ {} (:at 1578370404715) (:by |yeKFqj7rX) (:id |-pMY_bhIl) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1578370405543) (:by |yeKFqj7rX) (:id |3MFxiDIM7) (:text |path) (:type :leaf)
                |yr $ {} (:at 1578543753058) (:by |yeKFqj7rX) (:id |zZlDpX0Z_) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1578543753058) (:by |yeKFqj7rX) (:id |FAt8Q7CFX) (:text "|\"latest-version") (:type :leaf)
                    |r $ {} (:at 1578543753058) (:by |yeKFqj7rX) (:id |jtCYWK7xj) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1578543753058) (:by |yeKFqj7rX) (:id |yXeqZeJpp) (:text |latest-version) (:type :leaf)
                |yv $ {} (:at 1578543786851) (:by |yeKFqj7rX) (:id |GF-1whESJ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1578543790120) (:by |yeKFqj7rX) (:id |UmIGz28Te) (:text "|\"chalk") (:type :leaf)
                    |r $ {} (:at 1673284863293) (:by |yeKFqj7rX) (:id |L0yRTtUqy) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1578543791667) (:by |yeKFqj7rX) (:id |aU1FgN360) (:text |chalk) (:type :leaf)
                |yyr $ {} (:at 1580788781491) (:by |yeKFqj7rX) (:id |mZoY9dDW5) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580788781491) (:by |yeKFqj7rX) (:id |TFZaSB_pN) (:text |app.util) (:type :leaf)
                    |r $ {} (:at 1580788781491) (:by |yeKFqj7rX) (:id |fLDpGn9YY) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1580788781491) (:by |yeKFqj7rX) (:id |yUsp1jWyN) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1580788781491) (:by |yeKFqj7rX) (:id |aSp4sNzMc) (:text |check-version!) (:type :leaf)
                        |r $ {} (:at 1580788838757) (:by |yeKFqj7rX) (:id |wG7TlJ5L) (:text |file?) (:type :leaf)
                        |v $ {} (:at 1580788975885) (:by |yeKFqj7rX) (:id |j3WYlwAtk) (:text |split-path) (:type :leaf)
                        |x $ {} (:at 1583725415544) (:by |yeKFqj7rX) (:id |2zf9nS5ES) (:text |delay!) (:type :leaf)
                |yyv $ {} (:at 1580789054727) (:by |yeKFqj7rX) (:id |qAGa9ZRH2) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789057753) (:by |yeKFqj7rX) (:id |2lF_uahF) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1580789058152) (:by |yeKFqj7rX) (:id |aTpGBYnQX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1580789060882) (:by |yeKFqj7rX) (:id |VPkJf3Kap) (:text |schema) (:type :leaf)
                |yyx $ {} (:at 1580789152982) (:by |yeKFqj7rX) (:id |jPbD4LT66) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789155578) (:by |yeKFqj7rX) (:id |JTQu1jcOW) (:text |app.path) (:type :leaf)
                    |r $ {} (:at 1580789156369) (:by |yeKFqj7rX) (:id |rmGaKFHed) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1580789156651) (:by |yeKFqj7rX) (:id |vmTXOeOlr) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1580789157178) (:by |yeKFqj7rX) (:id |rki2okpCV) (:text |find-match-rule) (:type :leaf)
                        |j $ {} (:at 1580795664005) (:by |yeKFqj7rX) (:id |zG-G11Q69) (:text |list-paths) (:type :leaf)
                |yyy $ {} (:at 1580789278240) (:by |yeKFqj7rX) (:id |8GTda5gz) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789280150) (:by |yeKFqj7rX) (:id |ZllRSpT_5) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1580789288549) (:by |yeKFqj7rX) (:id |9P87aP3aH) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1580789288769) (:by |yeKFqj7rX) (:id |gHDTBMFxR) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1580789290839) (:by |yeKFqj7rX) (:id |SBjCr0dE) (:text |*configs) (:type :leaf)
                        |r $ {} (:at 1580789302381) (:by |yeKFqj7rX) (:id |E9OWelUx) (:text |load-config!) (:type :leaf)
                |yyyT $ {} (:at 1585020844118) (:by |yeKFqj7rX) (:id |T68sd7Ri6) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1585020847073) (:by |yeKFqj7rX) (:id |fkjoc5uW7R) (:text "|\"http-proxy") (:type :leaf)
                    |r $ {} (:at 1673284268530) (:by |yeKFqj7rX) (:id |XwscC-dDxi) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1585020850885) (:by |yeKFqj7rX) (:id |Y9WkRc-THY) (:text |http-proxy) (:type :leaf)
        :proc $ {} (:at 1596169094050) (:by |yeKFqj7rX) (:id |6mwllWfVdl) (:type :expr)
          :data $ {}
            |T $ {} (:at 1534483212338) (:by |yeKFqj7rX) (:id |mpzXR47-KZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1596169089364) (:by |yeKFqj7rX) (:id |RlVIY_FJ5) (:text |.on) (:type :leaf)
                |j $ {} (:at 1596169092102) (:by |yeKFqj7rX) (:id |i-hD1S5fXL) (:text |proxy) (:type :leaf)
                |r $ {} (:at 1596169096990) (:by |yeKFqj7rX) (:id |EYhaWkhGL) (:text "|\"error") (:type :leaf)
                |t $ {} (:at 1596169362957) (:by |yeKFqj7rX) (:id |hq0jYW_A76) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1596169364316) (:by |yeKFqj7rX) (:id |B7FHnaQ8lm) (:text "|#()") (:type :leaf)
                    |b $ {} (:at 1596169391990) (:by |yeKFqj7rX) (:id |xfVbAatRf) (:text |on-proxy-error) (:type :leaf)
                    |j $ {} (:at 1596169365921) (:by |yeKFqj7rX) (:id |6PtemyxadC) (:text |%1) (:type :leaf)
                    |r $ {} (:at 1596169370882) (:by |yeKFqj7rX) (:id |o-qqUP24h) (:text |%2) (:type :leaf)
                    |v $ {} (:at 1596169372286) (:by |yeKFqj7rX) (:id |qnsS2CTTFz) (:text |%3) (:type :leaf)
      |app.path $ {}
        :defs $ {}
          |find-match-rule $ {} (:at 1578370903779) (:by |yeKFqj7rX) (:id |Z7BedZ3hM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578370906031) (:by |yeKFqj7rX) (:id |WU1Y9j5rr) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578370903779) (:by |yeKFqj7rX) (:id |eypchIWNQ) (:text |find-match-rule) (:type :leaf)
              |r $ {} (:at 1578370903779) (:by |yeKFqj7rX) (:id |YDHLG08BW) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1578371012773) (:by |yeKFqj7rX) (:id |FA54aKivv) (:text |segments) (:type :leaf)
                  |T $ {} (:at 1578372297618) (:by |yeKFqj7rX) (:id |14B3Mq-W) (:text |rules) (:type :leaf)
              |x $ {} (:at 1578371538800) (:by |yeKFqj7rX) (:id |wHb0CFTBJ) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1578371539427) (:by |yeKFqj7rX) (:id |Fwe26CJs) (:text |let) (:type :leaf)
                  |T $ {} (:at 1578371541552) (:by |yeKFqj7rX) (:id |jSEfn3Cg) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578371541724) (:by |yeKFqj7rX) (:id |GIU0BfSZH) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1578373032145) (:by |yeKFqj7rX) (:id |thoJkkEjW) (:text |current-match) (:type :leaf)
                          |T $ {} (:at 1578371394332) (:by |yeKFqj7rX) (:id |G7u-3Yza) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578371396792) (:by |yeKFqj7rX) (:id |G7u-3Yzaleaf) (:text |loop) (:type :leaf)
                              |j $ {} (:at 1578371399830) (:by |yeKFqj7rX) (:id |bmE3BOx6c) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371400019) (:by |yeKFqj7rX) (:id |Zm9qsvwzD) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1578372298766) (:by |yeKFqj7rX) (:id |WVgqcAqd) (:text |xs) (:type :leaf)
                                      |T $ {} (:at 1578372296282) (:by |yeKFqj7rX) (:id |qLIBnanf) (:text |rules) (:type :leaf)
                              |r $ {} (:at 1578372278698) (:by |yeKFqj7rX) (:id |JE79tajHB) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1578372280186) (:by |yeKFqj7rX) (:id |FO3t1Ztud) (:text |let) (:type :leaf)
                                  |L $ {} (:at 1578372280407) (:by |yeKFqj7rX) (:id |NOdSARnDH) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578372280541) (:by |yeKFqj7rX) (:id |DrRPdddBX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1578372281888) (:by |yeKFqj7rX) (:id |iP9efKJb-) (:text |cursor) (:type :leaf)
                                          |j $ {} (:at 1578372282727) (:by |yeKFqj7rX) (:id |hqgYti_Ux) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1578372284109) (:by |yeKFqj7rX) (:id |eoMzDhlaS) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1578372299831) (:by |yeKFqj7rX) (:id |F4rcXCDPU) (:text |xs) (:type :leaf)
                                  |P $ {} (:at 1578372302598) (:by |yeKFqj7rX) (:id |J17aS_n4C) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1578372757129) (:by |yeKFqj7rX) (:id |H674lfI_B) (:text |;) (:type :leaf)
                                      |T $ {} (:at 1578372302598) (:by |yeKFqj7rX) (:id |vtT7rxrwh) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1578372302598) (:by |yeKFqj7rX) (:id |YvW0O2PQl) (:text "|\"compare") (:type :leaf)
                                      |r $ {} (:at 1578372302598) (:by |yeKFqj7rX) (:id |i-U2Ncb2c) (:text |segments) (:type :leaf)
                                      |v $ {} (:at 1578372302598) (:by |yeKFqj7rX) (:id |dnArD5FUT) (:text "|\"to") (:type :leaf)
                                      |x $ {} (:at 1578372302598) (:by |yeKFqj7rX) (:id |2x_QAz_TX) (:text |cursor) (:type :leaf)
                                  |T $ {} (:at 1578371524603) (:by |yeKFqj7rX) (:id |IXX8u4rc) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1578371525981) (:by |yeKFqj7rX) (:id |O7dmy49u) (:text |if) (:type :leaf)
                                      |L $ {} (:at 1578371526206) (:by |yeKFqj7rX) (:id |hxshst-_) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1578371527993) (:by |yeKFqj7rX) (:id |-3ad8Vd7k) (:text |empty?) (:type :leaf)
                                          |j $ {} (:at 1578372367904) (:by |yeKFqj7rX) (:id |jkazEdGO) (:text |xs) (:type :leaf)
                                      |P $ {} (:at 1578371533367) (:by |yeKFqj7rX) (:id |l4okSjPQM) (:text |nil) (:type :leaf)
                                      |T $ {} (:at 1578371412425) (:by |yeKFqj7rX) (:id |IFD7pyl2) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1578371495934) (:by |yeKFqj7rX) (:id |IFD7pyl2leaf) (:text |let) (:type :leaf)
                                          |j $ {} (:at 1578371496437) (:by |yeKFqj7rX) (:id |XQYgGnRXh) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1578371496606) (:by |yeKFqj7rX) (:id |IY59vsESD) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1578371499306) (:by |yeKFqj7rX) (:id |ZzbbPnB0a) (:text |result) (:type :leaf)
                                                  |T $ {} (:at 1578371462903) (:by |yeKFqj7rX) (:id |oScYZBePy) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1578371466616) (:by |yeKFqj7rX) (:id |6u_GOzHt) (:text |match-path) (:type :leaf)
                                                      |b $ {} (:at 1578371487363) (:by |yeKFqj7rX) (:id |oJ2j93VQR) (:text |segments) (:type :leaf)
                                                      |j $ {} (:at 1578372457671) (:by |yeKFqj7rX) (:id |HlZdO1Ay) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1578372507958) (:by |yeKFqj7rX) (:id |hr-JknWz7) (:text |split-path) (:type :leaf)
                                                          |T $ {} (:at 1578371468240) (:by |yeKFqj7rX) (:id |HKwoIpcC) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1578371469897) (:by |yeKFqj7rX) (:id |QLqX2Y3y) (:text |:path) (:type :leaf)
                                                              |j $ {} (:at 1578371483654) (:by |yeKFqj7rX) (:id |5we3n6h8) (:text |cursor) (:type :leaf)
                                          |n $ {} (:at 1578372160639) (:by |yeKFqj7rX) (:id |_8kq9On5R) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1578373062168) (:by |yeKFqj7rX) (:id |4umokDFwe) (:text |;) (:type :leaf)
                                              |T $ {} (:at 1578372163245) (:by |yeKFqj7rX) (:id |_8kq9On5Rleaf) (:text |println) (:type :leaf)
                                              |j $ {} (:at 1578372164650) (:by |yeKFqj7rX) (:id |yAislnXtx) (:text "|\"result") (:type :leaf)
                                              |r $ {} (:at 1578372165778) (:by |yeKFqj7rX) (:id |wQeFvTgp) (:text |result) (:type :leaf)
                                          |p $ {} (:at 1578372871509) (:by |yeKFqj7rX) (:id |wu2RBZm8r) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1578373060793) (:by |yeKFqj7rX) (:id |3cTLFW3S) (:text |;) (:type :leaf)
                                              |T $ {} (:at 1578372872269) (:by |yeKFqj7rX) (:id |wu2RBZm8rleaf) (:text |println) (:type :leaf)
                                              |j $ {} (:at 1578372876248) (:by |yeKFqj7rX) (:id |GjEGQeaUw) (:text "|\"cursor") (:type :leaf)
                                              |r $ {} (:at 1578372878154) (:by |yeKFqj7rX) (:id |4eUfsIqiP) (:text |cursor) (:type :leaf)
                                          |r $ {} (:at 1578371502047) (:by |yeKFqj7rX) (:id |dziHqIbpC) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1578371503431) (:by |yeKFqj7rX) (:id |dziHqIbpCleaf) (:text |if) (:type :leaf)
                                              |j $ {} (:at 1578371507100) (:by |yeKFqj7rX) (:id |FRo_DnmX) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1578371507487) (:by |yeKFqj7rX) (:id |IE3PxaPn5) (:text |:matches?) (:type :leaf)
                                                  |j $ {} (:at 1578371508421) (:by |yeKFqj7rX) (:id |asF5DjjBg) (:text |result) (:type :leaf)
                                              |r $ {} (:at 1578372676444) (:by |yeKFqj7rX) (:id |8r0PfLA0) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1578372679723) (:by |yeKFqj7rX) (:id |dzju_KJ7p) (:text |assoc) (:type :leaf)
                                                  |T $ {} (:at 1578372682043) (:by |yeKFqj7rX) (:id |9CathBsi) (:text |result) (:type :leaf)
                                                  |b $ {} (:at 1578372687448) (:by |yeKFqj7rX) (:id |3nGF_lCt) (:text |:rule) (:type :leaf)
                                                  |j $ {} (:at 1578372625706) (:by |yeKFqj7rX) (:id |-u_TRDaC) (:text |cursor) (:type :leaf)
                                              |v $ {} (:at 1578371511725) (:by |yeKFqj7rX) (:id |dj0i17m8) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1578371517515) (:by |yeKFqj7rX) (:id |WBPQgjPuI) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1578371517763) (:by |yeKFqj7rX) (:id |DePzrlQdZ) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1578371519151) (:by |yeKFqj7rX) (:id |UfbimjEAY) (:text |rest) (:type :leaf)
                                                      |j $ {} (:at 1578372365336) (:by |yeKFqj7rX) (:id |ezyUmtJYY) (:text |xs) (:type :leaf)
                  |b $ {} (:at 1578371968738) (:by |yeKFqj7rX) (:id |Osn03dMzg) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1578373065063) (:by |yeKFqj7rX) (:id |7AXMAe554) (:text |;) (:type :leaf)
                      |T $ {} (:at 1578371969710) (:by |yeKFqj7rX) (:id |Osn03dMzgleaf) (:text |println) (:type :leaf)
                      |j $ {} (:at 1578371972549) (:by |yeKFqj7rX) (:id |dCzaf0Re) (:text "|\"current rule") (:type :leaf)
                      |r $ {} (:at 1578373034753) (:by |yeKFqj7rX) (:id |vcQueBpg) (:text |current-match) (:type :leaf)
                  |j $ {} (:at 1578371551734) (:by |yeKFqj7rX) (:id |Vln9BlDB3) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578371553049) (:by |yeKFqj7rX) (:id |Vln9BlDB3leaf) (:text |if) (:type :leaf)
                      |j $ {} (:at 1578371553323) (:by |yeKFqj7rX) (:id |q_59RO_7f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578371557557) (:by |yeKFqj7rX) (:id |NHLWt-ok) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1578373035699) (:by |yeKFqj7rX) (:id |v_l8T1xh) (:text |current-match) (:type :leaf)
                      |r $ {} (:at 1580794955393) (:by |yeKFqj7rX) (:id |TmLN0WMG-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1580794955782) (:by |yeKFqj7rX) (:id |-LiPeQted) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1580794956313) (:by |yeKFqj7rX) (:id |FvjiFaiQu) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1580794957889) (:by |yeKFqj7rX) (:id |vgi5x8z8) (:text |:ok?) (:type :leaf)
                              |j $ {} (:at 1580794958656) (:by |yeKFqj7rX) (:id |j37s8C9a1) (:text |false) (:type :leaf)
                          |n $ {} (:at 1580795345495) (:by |yeKFqj7rX) (:id |6HB4UEh6W) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1580795421795) (:by |yeKFqj7rX) (:id |6HB4UEh6Wleaf) (:text |:segments) (:type :leaf)
                              |j $ {} (:at 1580795392481) (:by |yeKFqj7rX) (:id |uWZm07Ha7) (:text |segments) (:type :leaf)
                          |r $ {} (:at 1580794959459) (:by |yeKFqj7rX) (:id |zoiTg8zRa) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1580795302450) (:by |yeKFqj7rX) (:id |zoiTg8zRaleaf) (:text |:choices) (:type :leaf)
                              |j $ {} (:at 1580795262638) (:by |yeKFqj7rX) (:id |7kmlAF_r) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1580795263963) (:by |yeKFqj7rX) (:id |6YwJI--pg) (:text |map) (:type :leaf)
                                  |T $ {} (:at 1580795257419) (:by |yeKFqj7rX) (:id |4_HbhJjue) (:text |rules) (:type :leaf)
                                  |b $ {} (:at 1673373317117) (:by |yeKFqj7rX) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1673373317830) (:by |yeKFqj7rX) (:text |fn) (:type :leaf)
                                      |L $ {} (:at 1673373318588) (:by |yeKFqj7rX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1673373319287) (:by |yeKFqj7rX) (:text |r) (:type :leaf)
                                      |T $ {} (:at 1673373320508) (:by |yeKFqj7rX) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1673373321852) (:by |yeKFqj7rX) (:text |get) (:type :leaf)
                                          |L $ {} (:at 1673373324468) (:by |yeKFqj7rX) (:text |r) (:type :leaf)
                                          |T $ {} (:at 1673373275400) (:by |yeKFqj7rX) (:text |:path) (:type :leaf)
                      |v $ {} (:at 1578373041178) (:by |yeKFqj7rX) (:id |xoDdtXGG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1578373041692) (:by |yeKFqj7rX) (:id |pu-zJoeyW) (:text |let) (:type :leaf)
                          |L $ {} (:at 1578373042010) (:by |yeKFqj7rX) (:id |0xM7-bO05) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578373042222) (:by |yeKFqj7rX) (:id |fVT1kFJq) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578373045910) (:by |yeKFqj7rX) (:id |pw9o6vs3_) (:text |matched-rule) (:type :leaf)
                                  |j $ {} (:at 1578373052655) (:by |yeKFqj7rX) (:id |RmHe_kx93) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578373052655) (:by |yeKFqj7rX) (:id |7ManfgNRX) (:text |:rule) (:type :leaf)
                                      |j $ {} (:at 1578373052655) (:by |yeKFqj7rX) (:id |bmJ6boQAI) (:text |current-match) (:type :leaf)
                          |T $ {} (:at 1578371601330) (:by |yeKFqj7rX) (:id |jbYiaHJ1) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1578371601798) (:by |yeKFqj7rX) (:id |ZUv0Rhvw9) (:text |if) (:type :leaf)
                              |L $ {} (:at 1578371601983) (:by |yeKFqj7rX) (:id |4UEkih5xu) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371604082) (:by |yeKFqj7rX) (:id |lRIVoXcgW) (:text |empty?) (:type :leaf)
                                  |j $ {} (:at 1578372592612) (:by |yeKFqj7rX) (:id |oJObPbWA) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578372588934) (:by |yeKFqj7rX) (:id |n599upri3) (:text |:rest) (:type :leaf)
                                      |j $ {} (:at 1578373036917) (:by |yeKFqj7rX) (:id |E6-XP9ltj) (:text |current-match) (:type :leaf)
                              |P $ {} (:at 1580794942456) (:by |yeKFqj7rX) (:id |ULvDdqPHb) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1580794943204) (:by |yeKFqj7rX) (:id |Ym_yJcuo9) (:text |{}) (:type :leaf)
                                  |L $ {} (:at 1580794947565) (:by |yeKFqj7rX) (:id |5N7Ls6w0X) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1580794949827) (:by |yeKFqj7rX) (:id |5N7Ls6w0Xleaf) (:text |:ok?) (:type :leaf)
                                      |j $ {} (:at 1580794951566) (:by |yeKFqj7rX) (:id |K1r3AO3-W) (:text |true) (:type :leaf)
                                  |T $ {} (:at 1580794943735) (:by |yeKFqj7rX) (:id |ErSD4dmeQ) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1580794946901) (:by |yeKFqj7rX) (:id |Qwr9Ezdo) (:text |:rule) (:type :leaf)
                                      |T $ {} (:at 1578373051196) (:by |yeKFqj7rX) (:id |SVm9CvX68) (:text |matched-rule) (:type :leaf)
                              |T $ {} (:at 1578371559289) (:by |yeKFqj7rX) (:id |VV1PUHTJ_) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371567272) (:by |yeKFqj7rX) (:id |xYIkPlaf) (:text |recur) (:type :leaf)
                                  |j $ {} (:at 1578371569599) (:by |yeKFqj7rX) (:id |Qvq4cC-L) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578371710096) (:by |yeKFqj7rX) (:id |pIDhfHAr) (:text |:rest) (:type :leaf)
                                      |j $ {} (:at 1578373078226) (:by |yeKFqj7rX) (:id |L1fUNr7t) (:text |current-match) (:type :leaf)
                                  |r $ {} (:at 1578371586058) (:by |yeKFqj7rX) (:id |Ei8KbJowa) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578371587801) (:by |yeKFqj7rX) (:id |mBabBFSy9) (:text |:next) (:type :leaf)
                                      |j $ {} (:at 1578373055228) (:by |yeKFqj7rX) (:id |m1EhWzP_Y) (:text |matched-rule) (:type :leaf)
          |letter-number-pattern $ {} (:at 1673284127406) (:by |yeKFqj7rX) (:type :expr)
            :data $ {}
              |T $ {} (:at 1673284127406) (:by |yeKFqj7rX) (:text |def) (:type :leaf)
              |b $ {} (:at 1673284127406) (:by |yeKFqj7rX) (:text |letter-number-pattern) (:type :leaf)
              |h $ {} (:at 1673284127406) (:by |yeKFqj7rX) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1673284133915) (:by |yeKFqj7rX) (:text |new) (:type :leaf)
                  |L $ {} (:at 1673284136312) (:by |yeKFqj7rX) (:text |js/RegExp) (:type :leaf)
                  |T $ {} (:at 1673284131749) (:by |yeKFqj7rX) (:text "|\"\\{[\\w\\d\\-]+\\}") (:type :leaf)
          |list-paths $ {} (:at 1580795667444) (:by |yeKFqj7rX) (:id |dHKf5DUZp) (:type :expr)
            :data $ {}
              |T $ {} (:at 1580795667444) (:by |yeKFqj7rX) (:id |ftdKg1VPg) (:text |defn) (:type :leaf)
              |j $ {} (:at 1580795667444) (:by |yeKFqj7rX) (:id |6iKiinyK3) (:text |list-paths) (:type :leaf)
              |r $ {} (:at 1580795667444) (:by |yeKFqj7rX) (:id |CbWpRkg1P) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1580795667444) (:by |yeKFqj7rX) (:id |BYUlkwKpb) (:text |routes) (:type :leaf)
              |v $ {} (:at 1580795682881) (:by |yeKFqj7rX) (:id |pTF_IjMEh) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1673283891261) (:by |yeKFqj7rX) (:id |pTF_IjMEhleaf) (:text |->) (:type :leaf)
                  |j $ {} (:at 1580795687356) (:by |yeKFqj7rX) (:id |rrxShCw3b) (:text |routes) (:type :leaf)
                  |n $ {} (:at 1673373380860) (:by |yeKFqj7rX) (:text |.to-list) (:type :leaf)
                  |r $ {} (:at 1580795687716) (:by |yeKFqj7rX) (:id |WnqmsOm_T) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1580795689371) (:by |yeKFqj7rX) (:id |_OLhnHmF_) (:text |mapcat) (:type :leaf)
                      |j $ {} (:at 1580795689631) (:by |yeKFqj7rX) (:id |3M7ulOb1O) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1580795689895) (:by |yeKFqj7rX) (:id |7oruj8dp8) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1580795690155) (:by |yeKFqj7rX) (:id |OcECZVFx) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1580795697953) (:by |yeKFqj7rX) (:id |Gc-juTwSs) (:text |rule) (:type :leaf)
                          |r $ {} (:at 1580795699737) (:by |yeKFqj7rX) (:id |ZpcDzMGI) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1580795717679) (:by |yeKFqj7rX) (:id |ZpcDzMGIleaf) (:text |concat) (:type :leaf)
                              |j $ {} (:at 1580795719867) (:by |yeKFqj7rX) (:id |o0JCTsOYL) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1580795720470) (:by |yeKFqj7rX) (:id |yLegs_-8) (:text |[]) (:type :leaf)
                                  |T $ {} (:at 1580795708291) (:by |yeKFqj7rX) (:id |KUqDT6003) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1580795709297) (:by |yeKFqj7rX) (:id |HdUQVo-1) (:text |:path) (:type :leaf)
                                      |j $ {} (:at 1580795711316) (:by |yeKFqj7rX) (:id |Xd4h86xUz) (:text |rule) (:type :leaf)
                              |r $ {} (:at 1580795781422) (:by |yeKFqj7rX) (:id |RcvRmLB5) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1673283894334) (:by |yeKFqj7rX) (:id |6I0-i7Y8g) (:text |->) (:type :leaf)
                                  |T $ {} (:at 1580795722754) (:by |yeKFqj7rX) (:id |_UL57Eki) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1580795724491) (:by |yeKFqj7rX) (:id |_E75josw) (:text |list-paths) (:type :leaf)
                                      |j $ {} (:at 1580795726482) (:by |yeKFqj7rX) (:id |nIFuqdul9) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1580795729088) (:by |yeKFqj7rX) (:id |yY89bufB) (:text |:next) (:type :leaf)
                                          |j $ {} (:at 1580795730558) (:by |yeKFqj7rX) (:id |HMh1PNFoI) (:text |rule) (:type :leaf)
                                  |j $ {} (:at 1580795785214) (:by |yeKFqj7rX) (:id |_gjfXafl) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1580795787587) (:by |yeKFqj7rX) (:id |_gjfXaflleaf) (:text |map) (:type :leaf)
                                      |j $ {} (:at 1580795788254) (:by |yeKFqj7rX) (:id |hpF2zoiu) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1580795788857) (:by |yeKFqj7rX) (:id |7ifixD4ja) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1580795789124) (:by |yeKFqj7rX) (:id |I212PJW7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1580795789471) (:by |yeKFqj7rX) (:id |U9QxdCnnE) (:text |x) (:type :leaf)
                                          |r $ {} (:at 1580795790329) (:by |yeKFqj7rX) (:id |tAaKbvT6) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1580795791148) (:by |yeKFqj7rX) (:id |tAaKbvT6leaf) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1580795792326) (:by |yeKFqj7rX) (:id |s4mUeWI7) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1580795793053) (:by |yeKFqj7rX) (:id |1X9_gxVz9) (:text |:path) (:type :leaf)
                                                  |j $ {} (:at 1580795794007) (:by |yeKFqj7rX) (:id |L_GQKeZA) (:text |rule) (:type :leaf)
                                              |n $ {} (:at 1580795802928) (:by |yeKFqj7rX) (:id |qfUzVG00) (:text "|\"/") (:type :leaf)
                                              |r $ {} (:at 1580795794987) (:by |yeKFqj7rX) (:id |2ZVEw9PO3) (:text |x) (:type :leaf)
          |match-path $ {} (:at 1578371634874) (:by |yeKFqj7rX) (:id |IcHAXdPbb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578371634874) (:by |yeKFqj7rX) (:id |_KzPONZ1S) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578371634874) (:by |yeKFqj7rX) (:id |RwS2EvFNo) (:text |match-path) (:type :leaf)
              |r $ {} (:at 1578371634874) (:by |yeKFqj7rX) (:id |5wa4aWZ_-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578371634874) (:by |yeKFqj7rX) (:id |AjD8ufxlK) (:text |segments) (:type :leaf)
                  |j $ {} (:at 1578371645187) (:by |yeKFqj7rX) (:id |jbbod05Q) (:text |rule-path) (:type :leaf)
              |s $ {} (:at 1578372222472) (:by |yeKFqj7rX) (:id |Z27GJpiC) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1578372761471) (:by |yeKFqj7rX) (:id |V4tLL-rW) (:text |;) (:type :leaf)
                  |T $ {} (:at 1578372223359) (:by |yeKFqj7rX) (:id |Z27GJpiCleaf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1578372226432) (:by |yeKFqj7rX) (:id |2q-sq8qRu) (:text "|\"matching") (:type :leaf)
                  |r $ {} (:at 1578372228221) (:by |yeKFqj7rX) (:id |6zjqHbdG) (:text |segments) (:type :leaf)
                  |v $ {} (:at 1578372230301) (:by |yeKFqj7rX) (:id |VObZ6SeQx) (:text |rule-path) (:type :leaf)
              |t $ {} (:at 1578371727069) (:by |yeKFqj7rX) (:id |SK9UUDFg) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578371727540) (:by |yeKFqj7rX) (:id |SK9UUDFgleaf) (:text |if) (:type :leaf)
                  |j $ {} (:at 1578371727717) (:by |yeKFqj7rX) (:id |JVmAUBQiM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578371729172) (:by |yeKFqj7rX) (:id |v1epNtHB0) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1578371922673) (:by |yeKFqj7rX) (:id |SX-W3-bSx) (:text |rule-path) (:type :leaf)
                  |r $ {} (:at 1578371742953) (:by |yeKFqj7rX) (:id |MqPovjQoN) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578371742953) (:by |yeKFqj7rX) (:id |EQCLo1LuH) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1578371742953) (:by |yeKFqj7rX) (:id |7T0biLiI6) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578371742953) (:by |yeKFqj7rX) (:id |ZcDk8AMrZ) (:text |:matches?) (:type :leaf)
                          |j $ {} (:at 1578371742953) (:by |yeKFqj7rX) (:id |Wt3IpC21e) (:text |true) (:type :leaf)
                      |r $ {} (:at 1578371742953) (:by |yeKFqj7rX) (:id |42Z62ucdQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578371742953) (:by |yeKFqj7rX) (:id |-HNg3k9aO) (:text |:rest) (:type :leaf)
                          |j $ {} (:at 1578371749356) (:by |yeKFqj7rX) (:id |d5p2dvX0Y) (:text |segments) (:type :leaf)
                  |v $ {} (:at 1578371751855) (:by |yeKFqj7rX) (:id |pYS_nmW8e) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578371780321) (:by |yeKFqj7rX) (:id |pYS_nmW8eleaf) (:text |cond) (:type :leaf)
                      |j $ {} (:at 1578371780665) (:by |yeKFqj7rX) (:id |Qav0i1fcL) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578371781334) (:by |yeKFqj7rX) (:id |VKg4IRH3) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578371782410) (:by |yeKFqj7rX) (:id |U00rvOWz0) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1578371784408) (:by |yeKFqj7rX) (:id |njj9SkbQ4) (:text |segments) (:type :leaf)
                          |j $ {} (:at 1578371785857) (:by |yeKFqj7rX) (:id |I4KkkcmO) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578371786204) (:by |yeKFqj7rX) (:id |2VHw17Lsx) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1578371786425) (:by |yeKFqj7rX) (:id |u2IrFbMvK) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371788247) (:by |yeKFqj7rX) (:id |u54pAGzUP) (:text |:matches) (:type :leaf)
                                  |j $ {} (:at 1578371789047) (:by |yeKFqj7rX) (:id |vXDY3ObX4) (:text |false) (:type :leaf)
                              |r $ {} (:at 1578371789936) (:by |yeKFqj7rX) (:id |AKT0LZAvc) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371792346) (:by |yeKFqj7rX) (:id |AKT0LZAvcleaf) (:text |:rest) (:type :leaf)
                                  |j $ {} (:at 1578371795224) (:by |yeKFqj7rX) (:id |73f8dyNc) (:text |segments) (:type :leaf)
                              |v $ {} (:at 1578371796822) (:by |yeKFqj7rX) (:id |oRg5GU7D) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371893195) (:by |yeKFqj7rX) (:id |oRg5GU7Dleaf) (:text |:rest-rule) (:type :leaf)
                                  |j $ {} (:at 1578371802833) (:by |yeKFqj7rX) (:id |4YDQWD-z) (:text |rule-path) (:type :leaf)
                      |r $ {} (:at 1578371806104) (:by |yeKFqj7rX) (:id |MDyc1CV5) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578371809264) (:by |yeKFqj7rX) (:id |mdKyTXCB) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578371817809) (:by |yeKFqj7rX) (:id |mW3EcWZQ) (:text |=) (:type :leaf)
                              |j $ {} (:at 1578371818326) (:by |yeKFqj7rX) (:id |owr_0fbu) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371819052) (:by |yeKFqj7rX) (:id |WvXqTvZKg) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1578371820574) (:by |yeKFqj7rX) (:id |7D8eg--m) (:text |segments) (:type :leaf)
                              |r $ {} (:at 1578371818326) (:by |yeKFqj7rX) (:id |7uV5U3u6) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371819052) (:by |yeKFqj7rX) (:id |WvXqTvZKg) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1578371826011) (:by |yeKFqj7rX) (:id |7D8eg--m) (:text |rule-path) (:type :leaf)
                          |j $ {} (:at 1578371829059) (:by |yeKFqj7rX) (:id |cDd_9sBX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578371831070) (:by |yeKFqj7rX) (:id |cDd_9sBXleaf) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1578371832530) (:by |yeKFqj7rX) (:id |iTnKwXZW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371834391) (:by |yeKFqj7rX) (:id |fo3G6kKZl) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1578371836884) (:by |yeKFqj7rX) (:id |IYhBr1bHQ) (:text |segments) (:type :leaf)
                              |r $ {} (:at 1578371838275) (:by |yeKFqj7rX) (:id |zJ3OE-49) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371839882) (:by |yeKFqj7rX) (:id |rqm0GxQ32) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1578371841710) (:by |yeKFqj7rX) (:id |Eq1klDG4n) (:text |rule-path) (:type :leaf)
                      |v $ {} (:at 1578371806104) (:by |yeKFqj7rX) (:id |jbjcVns8) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1596794392498) (:by |yeKFqj7rX) (:id |L7KCTgAPuq) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1596794393852) (:by |yeKFqj7rX) (:id |veYeY0AMeK) (:text |or) (:type :leaf)
                              |T $ {} (:at 1578371809264) (:by |yeKFqj7rX) (:id |mdKyTXCB) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1673283548329) (:by |yeKFqj7rX) (:id |mW3EcWZQ) (:text |.starts-with?) (:type :leaf)
                                  |r $ {} (:at 1578371818326) (:by |yeKFqj7rX) (:id |7uV5U3u6) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578371819052) (:by |yeKFqj7rX) (:id |WvXqTvZKg) (:text |first) (:type :leaf)
                                      |j $ {} (:at 1578371826011) (:by |yeKFqj7rX) (:id |7D8eg--m) (:text |rule-path) (:type :leaf)
                                  |v $ {} (:at 1578371856393) (:by |yeKFqj7rX) (:id |yhhM6GBEc) (:text "|\":") (:type :leaf)
                              |j $ {} (:at 1596794394800) (:by |yeKFqj7rX) (:id |2LKR3beES6) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1673284116463) (:by |yeKFqj7rX) (:id |2LKR3beES6leaf) (:text |.!test) (:type :leaf)
                                  |f $ {} (:at 1673284127052) (:by |yeKFqj7rX) (:text |letter-number-pattern) (:type :leaf)
                                  |r $ {} (:at 1596794435932) (:by |yeKFqj7rX) (:id |dSVIltPGZm) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1596794435932) (:by |yeKFqj7rX) (:id |K6sydLxst9) (:text |first) (:type :leaf)
                                      |j $ {} (:at 1596794435932) (:by |yeKFqj7rX) (:id |ErfFYY7tRE) (:text |rule-path) (:type :leaf)
                          |j $ {} (:at 1578371829059) (:by |yeKFqj7rX) (:id |cDd_9sBX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578371831070) (:by |yeKFqj7rX) (:id |cDd_9sBXleaf) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1578371832530) (:by |yeKFqj7rX) (:id |iTnKwXZW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371834391) (:by |yeKFqj7rX) (:id |fo3G6kKZl) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1578371836884) (:by |yeKFqj7rX) (:id |IYhBr1bHQ) (:text |segments) (:type :leaf)
                              |r $ {} (:at 1578371838275) (:by |yeKFqj7rX) (:id |zJ3OE-49) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371839882) (:by |yeKFqj7rX) (:id |rqm0GxQ32) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1578371841710) (:by |yeKFqj7rX) (:id |Eq1klDG4n) (:text |rule-path) (:type :leaf)
                      |x $ {} (:at 1578371862564) (:by |yeKFqj7rX) (:id |cqI4iN0a) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1673283543463) (:by |yeKFqj7rX) (:id |cqI4iN0aleaf) (:text |true) (:type :leaf)
                          |j $ {} (:at 1578371867426) (:by |yeKFqj7rX) (:id |fMeV0GPZJ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578371867810) (:by |yeKFqj7rX) (:id |bk9Lxy6D) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1578371868022) (:by |yeKFqj7rX) (:id |qJ78wZRXq) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371871313) (:by |yeKFqj7rX) (:id |aEQZnlWMu) (:text |:matches?) (:type :leaf)
                                  |j $ {} (:at 1578371873031) (:by |yeKFqj7rX) (:id |C9TeY5RxT) (:text |false) (:type :leaf)
                              |r $ {} (:at 1578371874427) (:by |yeKFqj7rX) (:id |LeVAtvb1) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371875236) (:by |yeKFqj7rX) (:id |LeVAtvb1leaf) (:text |:rest) (:type :leaf)
                                  |j $ {} (:at 1578371876985) (:by |yeKFqj7rX) (:id |wSpCbURDc) (:text |segments) (:type :leaf)
                              |v $ {} (:at 1578371879204) (:by |yeKFqj7rX) (:id |_6o-G1AA) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578371888129) (:by |yeKFqj7rX) (:id |_6o-G1AAleaf) (:text |:rest-rule) (:type :leaf)
                                  |j $ {} (:at 1578371891466) (:by |yeKFqj7rX) (:id |fJ-n2iOs) (:text |rule-path) (:type :leaf)
        :ns $ {} (:at 1580789110559) (:by |yeKFqj7rX) (:id |L0UqDD7-N) (:type :expr)
          :data $ {}
            |T $ {} (:at 1580789110559) (:by |yeKFqj7rX) (:id |HHUgvWdjC) (:text |ns) (:type :leaf)
            |j $ {} (:at 1580789110559) (:by |yeKFqj7rX) (:id |7RoKplWDO) (:text |app.path) (:type :leaf)
            |r $ {} (:at 1580789128702) (:by |yeKFqj7rX) (:id |ng2-JFDe7) (:type :expr)
              :data $ {}
                |T $ {} (:at 1580789130327) (:by |yeKFqj7rX) (:id |KqdJNg4Yd) (:text |:require) (:type :leaf)
                |r $ {} (:at 1580789169435) (:by |yeKFqj7rX) (:id |00NeZqKNv) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580789171607) (:by |yeKFqj7rX) (:id |G_mlaySo8) (:text |app.util) (:type :leaf)
                    |r $ {} (:at 1580789173383) (:by |yeKFqj7rX) (:id |Ph_MKZChs) (:text |:refer) (:type :leaf)
                    |x $ {} (:at 1580789174342) (:by |yeKFqj7rX) (:id |6_mStkCBA) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1580789175255) (:by |yeKFqj7rX) (:id |XjhQTpsBk) (:text |split-path) (:type :leaf)
        :proc $ {} (:at 1580789110559) (:by |yeKFqj7rX) (:id |erhnqUoxP) (:type :expr)
          :data $ {}
      |app.router $ {}
        :defs $ {}
          |lilac-method+ $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |YNVgYgNQP6) (:type :expr)
            :data $ {}
              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |GwVsTNU7Qa) (:text |deflilac) (:type :leaf)
              |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |ovyVjZScf8) (:text |lilac-method+) (:type :leaf)
              |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |_4RgsByWZ_) (:type :expr)
                :data $ {}
              |v $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |Hp5mGRCVDK) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |iiu2q9pGbx) (:text |optional+) (:type :leaf)
                  |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |BdLovxKeD-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1581915607401) (:by |yeKFqj7rX) (:id |B6Zjk44m-a) (:text |record+) (:type :leaf)
                      |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |yyaj7f2vyS) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |9FGV_RLfNv) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1579851668726) (:by |yeKFqj7rX) (:id |8m4cohh54) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851670233) (:by |yeKFqj7rX) (:id |8m4cohh54leaf) (:text |:code) (:type :leaf)
                              |j $ {} (:at 1579851671433) (:by |yeKFqj7rX) (:id |rtoFB3ye) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1579851674081) (:by |yeKFqj7rX) (:id |98YHYzGuN) (:text |optional+) (:type :leaf)
                                  |j $ {} (:at 1579851677462) (:by |yeKFqj7rX) (:id |sGwCVSZGZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1579851679254) (:by |yeKFqj7rX) (:id |W7zTg5VC) (:text |number+) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |8-nQ7JPv-k) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |mEVyBTsuEy) (:text |:type) (:type :leaf)
                              |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |yj35WXGlv9) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |UW4vKr3G4R) (:text |is+) (:type :leaf)
                                  |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |S_iLkCEmqr) (:text |:file) (:type :leaf)
                          |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |DKgoE4f-59) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |KQwrLq088p) (:text |:file) (:type :leaf)
                              |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |7qJ_HYMtHz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |VKs0llKgpU) (:text |string+) (:type :leaf)
                          |v $ {} (:at 1583725194617) (:by |yeKFqj7rX) (:id |5nLlNsqE) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1583725195524) (:by |yeKFqj7rX) (:id |5nLlNsqEleaf) (:text |:delay) (:type :leaf)
                              |j $ {} (:at 1583725196465) (:by |yeKFqj7rX) (:id |4IT2pX8rI) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1583725199384) (:by |yeKFqj7rX) (:id |4rGQQOG1) (:text |optional+) (:type :leaf)
                                  |j $ {} (:at 1583725200992) (:by |yeKFqj7rX) (:id |pH8oGKci-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1583725202063) (:by |yeKFqj7rX) (:id |suuiC6RYs) (:text |number+) (:type :leaf)
                      |r $ {} (:at 1579874434536) (:by |yeKFqj7rX) (:id |TMLLzgJx5) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579874434975) (:by |yeKFqj7rX) (:id |TMLLzgJx5leaf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1579874435423) (:by |yeKFqj7rX) (:id |yqTZzmdC9) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1581915612935) (:by |yeKFqj7rX) (:id |ll0lWSH1) (:text |:check-keys?) (:type :leaf)
                              |j $ {} (:at 1581915614172) (:by |yeKFqj7rX) (:id |4-WM1uRtg) (:text |true) (:type :leaf)
          |lilac-router+ $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |G7nN_OXWve) (:type :expr)
            :data $ {}
              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |A5LgLQMswY) (:text |deflilac) (:type :leaf)
              |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |LIfy2mLO5m) (:text |lilac-router+) (:type :leaf)
              |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |mag-OygQAC) (:type :expr)
                :data $ {}
              |v $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |wTkmJFKWtw) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1581915531429) (:by |yeKFqj7rX) (:id |7ij92PQ1g0) (:text |record+) (:type :leaf)
                  |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |7xMaExYiaz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |8ug9za-dvs) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |5cYBVWUf9b) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |1FcUlHF7TM) (:text |:port) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |IQ7jZyg6TG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |SfcFl9ERwa) (:text |number+) (:type :leaf)
                      |n $ {} (:at 1585020715188) (:by |yeKFqj7rX) (:id |Vr1MBJcVs) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1585021009116) (:by |yeKFqj7rX) (:id |Vr1MBJcVsleaf) (:text |:fallback-host) (:type :leaf)
                          |j $ {} (:at 1585020731306) (:by |yeKFqj7rX) (:id |dbfUvYEzE) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1585020735461) (:by |yeKFqj7rX) (:id |oxBrP-aoTY) (:text |optional+) (:type :leaf)
                              |T $ {} (:at 1585020729338) (:by |yeKFqj7rX) (:id |fGMOsrBvq) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1585020730581) (:by |yeKFqj7rX) (:id |gerWfo5L-) (:text |string+) (:type :leaf)
                      |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |sLenYtF3NE) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1581915860384) (:by |yeKFqj7rX) (:id |cCzhQ1R445) (:text |:routes) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |70FQiBe-_V) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1673283500001) (:by |yeKFqj7rX) (:id |KvRtVftxn2) (:text |list+) (:type :leaf)
                              |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |GSpGNHFm5G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |uJgXM0THGI) (:text |lilac-router-path+) (:type :leaf)
                  |r $ {} (:at 1579874394592) (:by |yeKFqj7rX) (:id |CLpLwGt6h) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1579874395514) (:by |yeKFqj7rX) (:id |CLpLwGt6hleaf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1579874396171) (:by |yeKFqj7rX) (:id |B4sXCfbg) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1585020719447) (:by |yeKFqj7rX) (:id |Re0VAZTT6) (:text |:check-keys?) (:type :leaf)
                          |j $ {} (:at 1581915543541) (:by |yeKFqj7rX) (:id |lu5a-EKOd) (:text |true) (:type :leaf)
          |lilac-router-path+ $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |VuNkBwwBCt) (:type :expr)
            :data $ {}
              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |0Wy3Yb0h4L) (:text |deflilac) (:type :leaf)
              |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |kKvi9Bzl8G) (:text |lilac-router-path+) (:type :leaf)
              |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |TV85jiIZx1) (:type :expr)
                :data $ {}
              |v $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |IEii_rM_Rd) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1581915598909) (:by |yeKFqj7rX) (:id |LHoAYwbTQu) (:text |record+) (:type :leaf)
                  |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |9RRV2MhSf6) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |gf5cEdEvND) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |v77LyRwypQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |qScHa-oFaF) (:text |:path) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |BjhX2Q-TmR) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |hNgUJGzBFG) (:text |string+) (:type :leaf)
                      |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |4j5e31c77R) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |l2xM6AdwmY) (:text |:get) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |6laTS7W7mT) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |AMat9BthmW) (:text |lilac-method+) (:type :leaf)
                      |v $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |9XsfohzwjP) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |Uuc_VRmhdn) (:text |:post) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |YHl1f5LYIN) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |iD3XkGV98n) (:text |lilac-method+) (:type :leaf)
                      |x $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |pjn9yM2dni) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |OXO-FL4fhN) (:text |:put) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |6FilwsAFC-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |JO6NEwRw6y) (:text |lilac-method+) (:type :leaf)
                      |y $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |RMB_LgMhZV) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |SnEf07CzXV) (:text |:delete) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |xCP1wAmgfz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |NfdxvbK4mv) (:text |lilac-method+) (:type :leaf)
                      |yT $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |O3LFM76yQa) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |TUPThjiBny) (:text |:next) (:type :leaf)
                          |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |G2sYoymksb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |7y4A_3ZLLF) (:text |optional+) (:type :leaf)
                              |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |97BCsbuHrE) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1673283671600) (:by |yeKFqj7rX) (:id |HhRAE6AqCm) (:text |list+) (:type :leaf)
                                  |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |8ZZBG-gge6) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |Pyv-fCrjBY) (:text |lilac-router-path+) (:type :leaf)
                  |r $ {} (:at 1579874411794) (:by |yeKFqj7rX) (:id |DvGVii0yO) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1579874413193) (:by |yeKFqj7rX) (:id |DvGVii0yOleaf) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1579874413444) (:by |yeKFqj7rX) (:id |IGgZYdFyl) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1581915576037) (:by |yeKFqj7rX) (:id |Osdv2DCZd) (:text |:check-keys?) (:type :leaf)
                          |j $ {} (:at 1581915578778) (:by |yeKFqj7rX) (:id |ehTOys3T) (:text |true) (:type :leaf)
        :ns $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |bnAvUgjuw) (:type :expr)
          :data $ {}
            |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |Hd8NXn6qu) (:text |ns) (:type :leaf)
            |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |FnxN81LZg) (:text |app.router) (:type :leaf)
            |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |l7wzQr6Jz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |BdVLwUuU7) (:text |:require) (:type :leaf)
                |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |xGDV5En2Q) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |OcwkcYFAf) (:text |lilac.core) (:type :leaf)
                    |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |-tUkGZwHE) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |7vYaCtAhP) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |s4qn7PrVk) (:text |validate-lilac) (:type :leaf)
                        |r $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |3C6rZ5dOK) (:text |number+) (:type :leaf)
                        |v $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |LTM3ULCJ7) (:text |string+) (:type :leaf)
                        |x $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |NRvYHyKdk) (:text |keyword+) (:type :leaf)
                        |y $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |OisFb52kdO) (:text |boolean+) (:type :leaf)
                        |yT $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |kDBwmNfoTS) (:text |nil+) (:type :leaf)
                        |yr $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |TRrfoS35uT) (:text |list+) (:type :leaf)
                        |yv $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |EAr4VnDHDt) (:text |map+) (:type :leaf)
                        |yx $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |wI2oPKl1kL) (:text |set+) (:type :leaf)
                        |yy $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |1Dgo2_Q6-2) (:text |deflilac) (:type :leaf)
                        |yyT $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |Mr_Qci3_ux) (:text |or+) (:type :leaf)
                        |yyj $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |MOzm1e4JYQ) (:text |and+) (:type :leaf)
                        |yyr $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |mv2Z6Lz7Ud) (:text |not+) (:type :leaf)
                        |yyv $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |obsXV4ouFi) (:text |custom+) (:type :leaf)
                        |yyx $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |48ah5zLIXk) (:text |is+) (:type :leaf)
                        |yyy $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |ghBa1uGqpW) (:text |optional+) (:type :leaf)
                        |yyyT $ {} (:at 1581915526972) (:by |yeKFqj7rX) (:id |YPiuw6_kO) (:text |record+) (:type :leaf)
        :proc $ {} (:at 1579851448885) (:by |yeKFqj7rX) (:id |NFUTx9R9Tw) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |html-header $ {} (:at 1578472231759) (:by |yeKFqj7rX) (:id |y0-ghBeEu) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578472236146) (:by |yeKFqj7rX) (:id |C8fk5cSEN) (:text |def) (:type :leaf)
              |j $ {} (:at 1578472231759) (:by |yeKFqj7rX) (:id |HA_TfuGfR) (:text |html-header) (:type :leaf)
              |r $ {} (:at 1578472236815) (:by |yeKFqj7rX) (:id |NbdYW3JPQ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578472236815) (:by |yeKFqj7rX) (:id |38F0o9mQG) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1578472236815) (:by |yeKFqj7rX) (:id |d1i007PVQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578472236815) (:by |yeKFqj7rX) (:id |qJicC9Yvk) (:text |:Content-Type) (:type :leaf)
                      |j $ {} (:at 1578472239996) (:by |yeKFqj7rX) (:id |THOKd7vhx) (:text "|\"text/html") (:type :leaf)
          |json-header $ {} (:at 1578472219243) (:by |yeKFqj7rX) (:id |MzTFnRQb4) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578472219243) (:by |yeKFqj7rX) (:id |uXnz0-gQD) (:text |def) (:type :leaf)
              |j $ {} (:at 1578472219243) (:by |yeKFqj7rX) (:id |kERz0JbQ3) (:text |json-header) (:type :leaf)
              |r $ {} (:at 1578472220327) (:by |yeKFqj7rX) (:id |YScGHV7Ev) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578472220327) (:by |yeKFqj7rX) (:id |00Jj7xGEZ) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1578472220327) (:by |yeKFqj7rX) (:id |lroGGrvZW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578472220327) (:by |yeKFqj7rX) (:id |ZeRVsTiN7) (:text |:Content-Type) (:type :leaf)
                      |j $ {} (:at 1578472220327) (:by |yeKFqj7rX) (:id |YziJZZ0As) (:text "|\"application/json") (:type :leaf)
        :ns $ {} (:at 1580789032030) (:by |yeKFqj7rX) (:id |SMLeG-4GW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1580789032030) (:by |yeKFqj7rX) (:id |E_myP8ATg) (:text |ns) (:type :leaf)
            |j $ {} (:at 1580789032030) (:by |yeKFqj7rX) (:id |oLOevvjoN) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1580789032030) (:by |yeKFqj7rX) (:id |YlFjqDK5D) (:type :expr)
          :data $ {}
      |app.util $ {}
        :defs $ {}
          |check-version! $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |-9KgttCvl) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |SqqTWUVqZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |VzDeIndsk) (:text |check-version!) (:type :leaf)
              |r $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |IIPeRE0Ld) (:type :expr)
                :data $ {}
              |t $ {} (:at 1673283842997) (:by |yeKFqj7rX) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1673283845210) (:by |yeKFqj7rX) (:text |hint-fn) (:type :leaf)
                  |b $ {} (:at 1673283851433) (:by |yeKFqj7rX) (:text |async) (:type :leaf)
              |v $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |mUfaZkVGQg) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1596166254866) (:by |yeKFqj7rX) (:id |lBhSqWejYi) (:text |let) (:type :leaf)
                  |j $ {} (:at 1596166256335) (:by |yeKFqj7rX) (:id |-4JhVXES8) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |uN7WlZTf_E) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |RxG0ktt1l2) (:text |pkg) (:type :leaf)
                          |j $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |dv9O1yMPfs) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1673283858325) (:by |yeKFqj7rX) (:id |mXSF1A_H7R) (:text |js/JSON.parse) (:type :leaf)
                              |r $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |_LLdMZ5WHc) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |Xh1LvkDSYM) (:text |fs/readFileSync) (:type :leaf)
                                  |j $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |Z1zdRb20R-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |HkKzt_QLj_) (:text |path/join) (:type :leaf)
                                      |j $ {} (:at 1673284444296) (:by |yeKFqj7rX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1673284444296) (:by |yeKFqj7rX) (:text |dirname) (:type :leaf)
                                          |b $ {} (:at 1673284444296) (:by |yeKFqj7rX) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1673284444296) (:by |yeKFqj7rX) (:text |fileURLToPath) (:type :leaf)
                                              |b $ {} (:at 1673284450363) (:by |yeKFqj7rX) (:text |js/import.meta.url) (:type :leaf)
                                      |r $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |YxQDljIVia) (:text "|\"../package.json") (:type :leaf)
                      |L $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |Io7kZH8lVr) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |FD4_-Px7SK) (:text |version) (:type :leaf)
                          |j $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |siN_Fcf31oQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |dTmb2ZyRalt) (:text |.-version) (:type :leaf)
                              |j $ {} (:at 1596166330950) (:by |yeKFqj7rX) (:id |EMTbjA2BDu6) (:text |pkg) (:type :leaf)
                      |T $ {} (:at 1596166262367) (:by |yeKFqj7rX) (:id |KKba5csBPk) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1596166265587) (:by |yeKFqj7rX) (:id |o0o6ru5llx) (:text |npm-version) (:type :leaf)
                          |T $ {} (:at 1596166256489) (:by |yeKFqj7rX) (:id |R0BpM4loIP) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1673283867973) (:by |yeKFqj7rX) (:id |2-ObhIQXVz) (:text |js-await) (:type :leaf)
                              |T $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |NLdwi9C9uC) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |hvrfcDuVwn) (:text |latest-version) (:type :leaf)
                                  |j $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |9L94M60Y9d) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |GSQuhBc9gw) (:text |.-name) (:type :leaf)
                                      |j $ {} (:at 1578543738168) (:by |yeKFqj7rX) (:id |_qB8ixsRK5) (:text |pkg) (:type :leaf)
                  |r $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |weNavm_L6Q) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |GMYw8byZYv) (:text |if) (:type :leaf)
                      |j $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |ubatrVlGzR) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |35vL1oRXoE) (:text |=) (:type :leaf)
                          |j $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |Tko3CFxVUz) (:text |npm-version) (:type :leaf)
                          |r $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |zb-zTsA2Gr) (:text |version) (:type :leaf)
                      |r $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |ArJ9Cp43Xr) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |F3CrNKkm05) (:text |println) (:type :leaf)
                          |j $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |umee_OqWmu) (:text "|\"Running latest version") (:type :leaf)
                          |r $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |sdh1sIZDgs) (:text |version) (:type :leaf)
                      |v $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |DvafqGLqxI) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |FRsB3HGcXD) (:text |println) (:type :leaf)
                          |j $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |YuZLV9XW-N) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1673283870255) (:by |yeKFqj7rX) (:id |y6guzNV9To) (:text |.!yellow) (:type :leaf)
                              |j $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |rNLKwfoetx) (:text |chalk) (:type :leaf)
                              |r $ {} (:at 1596166268204) (:by |yeKFqj7rX) (:id |GzQ0tPK16oy) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1673283986947) (:by |yeKFqj7rX) (:id |ANT7wqaj2T-) (:text |str) (:type :leaf)
                                  |j $ {} (:at 1673284055610) (:by |yeKFqj7rX) (:id |1razlfMapeB) (:text "|\"New version ") (:type :leaf)
                                  |j5 $ {} (:at 1673284056260) (:by |yeKFqj7rX) (:text |npm-version) (:type :leaf)
                                  |jD $ {} (:at 1673284050226) (:by |yeKFqj7rX) (:text "|\" available, current one is ") (:type :leaf)
                                  |jT $ {} (:at 1673284044938) (:by |yeKFqj7rX) (:text |version) (:type :leaf)
                                  |k $ {} (:at 1673284040623) (:by |yeKFqj7rX) (:text "|\" ") (:type :leaf)
                                  |l $ {} (:at 1673284024574) (:by |yeKFqj7rX) (:text "|\". Please upgrade!\nyarn global add @jimengio/serve-json\n\n") (:type :leaf)
                                  |n $ {} (:at 1673283989450) (:by |yeKFqj7rX) (:text |) (:type :leaf)
          |delay! $ {} (:at 1583725391956) (:by |yeKFqj7rX) (:id |3F3eJszFE) (:type :expr)
            :data $ {}
              |T $ {} (:at 1583725391956) (:by |yeKFqj7rX) (:id |LWxo5baRq) (:text |defn) (:type :leaf)
              |j $ {} (:at 1583725391956) (:by |yeKFqj7rX) (:id |OLNx7t1O3) (:text |delay!) (:type :leaf)
              |r $ {} (:at 1583725391956) (:by |yeKFqj7rX) (:id |tRgE-epgo) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1583725402761) (:by |yeKFqj7rX) (:id |FQ_HGgAa) (:text |t) (:type :leaf)
                  |j $ {} (:at 1583725403496) (:by |yeKFqj7rX) (:id |gHiZUM7wT) (:text |f) (:type :leaf)
              |v $ {} (:at 1583725404158) (:by |yeKFqj7rX) (:id |MLajcMXM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1583725502151) (:by |yeKFqj7rX) (:id |MLajcMXMleaf) (:text |js/setTimeout) (:type :leaf)
                  |j $ {} (:at 1583725405670) (:by |yeKFqj7rX) (:id |uBb_9Rlco) (:text |f) (:type :leaf)
                  |r $ {} (:at 1583725406488) (:by |yeKFqj7rX) (:id |yDqaKcKm) (:text |t) (:type :leaf)
          |file? $ {} (:at 1578659633423) (:by |yeKFqj7rX) (:id |tflook0zK) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578659647232) (:by |yeKFqj7rX) (:id |dbP060OB5) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578659633423) (:by |yeKFqj7rX) (:id |2S2Qcq_BV) (:text |file?) (:type :leaf)
              |r $ {} (:at 1578659633423) (:by |yeKFqj7rX) (:id |EfGD6PwvY) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578659634811) (:by |yeKFqj7rX) (:id |4dnNDkDu) (:text |x) (:type :leaf)
              |v $ {} (:at 1578659640943) (:by |yeKFqj7rX) (:id |xOLT1Hm6k) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1578659641572) (:by |yeKFqj7rX) (:id |_tNRUSUC) (:text |or) (:type :leaf)
                  |T $ {} (:at 1578659636322) (:by |yeKFqj7rX) (:id |Ff7cn2SxR) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578659637567) (:by |yeKFqj7rX) (:id |Ff7cn2SxRleaf) (:text |=) (:type :leaf)
                      |j $ {} (:at 1578659639962) (:by |yeKFqj7rX) (:id |1iF2y5LdF) (:text |:file) (:type :leaf)
                      |r $ {} (:at 1578659640546) (:by |yeKFqj7rX) (:id |m8hpDF1A) (:text |x) (:type :leaf)
                  |j $ {} (:at 1578659636322) (:by |yeKFqj7rX) (:id |TewraVEn) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578659637567) (:by |yeKFqj7rX) (:id |Ff7cn2SxRleaf) (:text |=) (:type :leaf)
                      |j $ {} (:at 1578659645415) (:by |yeKFqj7rX) (:id |1iF2y5LdF) (:text "|\"file") (:type :leaf)
                      |r $ {} (:at 1578659640546) (:by |yeKFqj7rX) (:id |m8hpDF1A) (:text |x) (:type :leaf)
          |split-path $ {} (:at 1578372496161) (:by |yeKFqj7rX) (:id |_N5MBInbv) (:type :expr)
            :data $ {}
              |T $ {} (:at 1578372497509) (:by |yeKFqj7rX) (:id |8CRV6ZffI) (:text |defn) (:type :leaf)
              |j $ {} (:at 1578372496161) (:by |yeKFqj7rX) (:id |UU9rrmH6L) (:text |split-path) (:type :leaf)
              |r $ {} (:at 1578372496161) (:by |yeKFqj7rX) (:id |hGvjyG7aS) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1578372499473) (:by |yeKFqj7rX) (:id |Km9INzWP) (:text |x) (:type :leaf)
              |v $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |hTFYEcRdj) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1673283524774) (:by |yeKFqj7rX) (:id |2uIAW-COK) (:text |->) (:type :leaf)
                  |j $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |2cvXHd7Cv) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1673283526548) (:by |yeKFqj7rX) (:id |OB2U41B0d) (:text |.split) (:type :leaf)
                      |f $ {} (:at 1578372502285) (:by |yeKFqj7rX) (:id |nGNMnd8Z) (:text |x) (:type :leaf)
                      |r $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |iA3fdXG3C) (:text "|\"/") (:type :leaf)
                  |r $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |dyZZJzCK-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |_Z8LUzM2m) (:text |filter) (:type :leaf)
                      |j $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |y6UyfLNt8) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |O4DO4-FUQ) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |fj55miqTR) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |4Zdt1XFu0) (:text |x) (:type :leaf)
                          |r $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |i0CKmqjFj) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |r8uJXIjWVf) (:text |not) (:type :leaf)
                              |j $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |mvX7PPOpFr) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1673283531435) (:by |yeKFqj7rX) (:id |n1zRiXRJ0u) (:text |.blank?) (:type :leaf)
                                  |j $ {} (:at 1578372500324) (:by |yeKFqj7rX) (:id |gY-unwCMTY) (:text |x) (:type :leaf)
        :ns $ {} (:at 1580788767835) (:by |yeKFqj7rX) (:id |dQVtxyApa) (:type :expr)
          :data $ {}
            |T $ {} (:at 1580788767835) (:by |yeKFqj7rX) (:id |yBtF6BM6s) (:text |ns) (:type :leaf)
            |j $ {} (:at 1580788767835) (:by |yeKFqj7rX) (:id |2I9YWKqWf) (:text |app.util) (:type :leaf)
            |n $ {} (:at 1580788879091) (:by |yeKFqj7rX) (:id |SxOqP5vW) (:type :expr)
              :data $ {}
                |D $ {} (:at 1580788880215) (:by |yeKFqj7rX) (:id |PIiEOohpO) (:text |:require) (:type :leaf)
                |L $ {} (:at 1580788918223) (:by |yeKFqj7rX) (:id |DZnmIYBo_) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580788918223) (:by |yeKFqj7rX) (:id |kagjVL32Z) (:text "|\"fs") (:type :leaf)
                    |r $ {} (:at 1580788918223) (:by |yeKFqj7rX) (:id |0tvPfY6ih) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1580788918223) (:by |yeKFqj7rX) (:id |8wHm7XmFp) (:text |fs) (:type :leaf)
                |T $ {} (:at 1580788878748) (:by |yeKFqj7rX) (:id |yR1a88GnW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580788878748) (:by |yeKFqj7rX) (:id |_d8kEm4uO) (:text "|\"chalk") (:type :leaf)
                    |r $ {} (:at 1673283970140) (:by |yeKFqj7rX) (:id |_jOy1D4jA) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1580788878748) (:by |yeKFqj7rX) (:id |D_Xp8G3hy) (:text |chalk) (:type :leaf)
                |j $ {} (:at 1580788892949) (:by |yeKFqj7rX) (:id |wMdlENO8y) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580788892949) (:by |yeKFqj7rX) (:id |rFKfZaPJ6) (:text "|\"latest-version") (:type :leaf)
                    |r $ {} (:at 1673283978694) (:by |yeKFqj7rX) (:id |4CrzYzd-s) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1580788892949) (:by |yeKFqj7rX) (:id |Fvh3wuIP3) (:text |latest-version) (:type :leaf)
                |r $ {} (:at 1580788905867) (:by |yeKFqj7rX) (:id |JsYMWwTQ7) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1580788905867) (:by |yeKFqj7rX) (:id |qffhYJU55) (:text "|\"path") (:type :leaf)
                    |r $ {} (:at 1580788905867) (:by |yeKFqj7rX) (:id |vj7lBp58M) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1580788905867) (:by |yeKFqj7rX) (:id |6fCzRayTW) (:text |path) (:type :leaf)
                |t $ {} (:at 1673284410416) (:by |yeKFqj7rX) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1673284415926) (:by |yeKFqj7rX) (:text "|\"path") (:type :leaf)
                    |b $ {} (:at 1673284417812) (:by |yeKFqj7rX) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1673284418050) (:by |yeKFqj7rX) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1673284418342) (:by |yeKFqj7rX) (:text |dirname) (:type :leaf)
                |u $ {} (:at 1673284422291) (:by |yeKFqj7rX) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1673284423574) (:by |yeKFqj7rX) (:text "|\"url") (:type :leaf)
                    |b $ {} (:at 1673284424501) (:by |yeKFqj7rX) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1673284424719) (:by |yeKFqj7rX) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1673284425379) (:by |yeKFqj7rX) (:text |fileURLToPath) (:type :leaf)
        :proc $ {} (:at 1580788767835) (:by |yeKFqj7rX) (:id |6AQdbh3rn) (:type :expr)
          :data $ {}
  :users $ {}
    |yeKFqj7rX $ {} (:avatar nil) (:id |yeKFqj7rX) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
