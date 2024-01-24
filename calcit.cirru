
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:local-storage-key |calcit-storage) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.9)
    :modules $ [] |skir/ |lilac/
  :entries $ {}
  :files $ {}
    |app.config $ %{} :FileEntry
      :defs $ {}
        |*configs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578370384023) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1673283678438) (:by |yeKFqj7rX) (:text |defatom)
              |j $ %{} :Leaf (:at 1578370384023) (:by |yeKFqj7rX) (:text |*configs)
              |r $ %{} :Leaf (:at 1578470435801) (:by |yeKFqj7rX) (:text |nil)
        |detect-config-file! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578659206175) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578659208450) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578659206175) (:by |yeKFqj7rX) (:text |detect-config-file!)
              |r $ %{} :Expr (:at 1578659206175) (:by |yeKFqj7rX)
                :data $ {}
              |v $ %{} :Expr (:at 1578659209555) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1673372303763) (:by |yeKFqj7rX) (:text |if)
                  |r $ %{} :Expr (:at 1578659213674) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578659217700) (:by |yeKFqj7rX) (:text |fs/existsSync)
                      |j $ %{} :Leaf (:at 1578659227643) (:by |yeKFqj7rX) (:text "|\"config.cirru")
                  |u $ %{} :Leaf (:at 1578659229590) (:by |yeKFqj7rX) (:text "|\"config.cirru")
                  |y $ %{} :Leaf (:at 1578660691513) (:by |yeKFqj7rX) (:text |nil)
        |load-config! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578370482057) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578370488352) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578370482057) (:by |yeKFqj7rX) (:text |load-config!)
              |r $ %{} :Expr (:at 1578370482057) (:by |yeKFqj7rX)
                :data $ {}
              |v $ %{} :Expr (:at 1578468661281) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1578468661920) (:by |yeKFqj7rX) (:text |let)
                  |L $ %{} :Expr (:at 1578468662361) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Expr (:at 1578468665650) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578468665650) (:by |yeKFqj7rX) (:text |config-path)
                          |j $ %{} :Expr (:at 1578468665650) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578468665650) (:by |yeKFqj7rX) (:text |or)
                              |j $ %{} :Expr (:at 1578468665650) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578468665650) (:by |yeKFqj7rX) (:text |aget)
                                  |j $ %{} :Leaf (:at 1578468665650) (:by |yeKFqj7rX) (:text |js/process.argv)
                                  |r $ %{} :Leaf (:at 1578468665650) (:by |yeKFqj7rX) (:text |2)
                              |r $ %{} :Expr (:at 1578659197137) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578659205754) (:by |yeKFqj7rX) (:text |detect-config-file!)
                  |N $ %{} :Expr (:at 1578660732227) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578660736483) (:by |yeKFqj7rX) (:text |when)
                      |j $ %{} :Expr (:at 1578660737288) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578660738823) (:by |yeKFqj7rX) (:text |nil?)
                          |j $ %{} :Leaf (:at 1578660742034) (:by |yeKFqj7rX) (:text |config-path)
                      |r $ %{} :Expr (:at 1578660743595) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578660744460) (:by |yeKFqj7rX) (:text |println)
                          |j $ %{} :Leaf (:at 1673372310640) (:by |yeKFqj7rX) (:text "|\"No config file: config.cirru")
                      |v $ %{} :Expr (:at 1578660770954) (:by |yeKFqj7rX)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1673283711398) (:by |yeKFqj7rX) (:text |js/process.exit)
                          |r $ %{} :Leaf (:at 1578660770954) (:by |yeKFqj7rX) (:text |1)
                  |P $ %{} :Expr (:at 1578468667152) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578468684189) (:by |yeKFqj7rX) (:text |when-not)
                      |j $ %{} :Expr (:at 1578468674181) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578468678091) (:by |yeKFqj7rX) (:text |fs/existsSync)
                          |j $ %{} :Leaf (:at 1578468680180) (:by |yeKFqj7rX) (:text |config-path)
                      |r $ %{} :Expr (:at 1578468684705) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578468686915) (:by |yeKFqj7rX) (:text |println)
                          |j $ %{} :Leaf (:at 1578660808765) (:by |yeKFqj7rX) (:text "|\"Not found:")
                          |r $ %{} :Leaf (:at 1578468701057) (:by |yeKFqj7rX) (:text |config-path)
                      |v $ %{} :Expr (:at 1578468702967) (:by |yeKFqj7rX)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1673283714636) (:by |yeKFqj7rX) (:text |js/process.exit)
                          |r $ %{} :Leaf (:at 1578468708048) (:by |yeKFqj7rX) (:text |1)
                  |R $ %{} :Expr (:at 1578484373695) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578484373695) (:by |yeKFqj7rX) (:text |println)
                      |j $ %{} :Leaf (:at 1578484373695) (:by |yeKFqj7rX) (:text "|\"Running at")
                      |r $ %{} :Leaf (:at 1578484373695) (:by |yeKFqj7rX) (:text |js/process.env.PWD)
                  |T $ %{} :Expr (:at 1578470534623) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |load-config-from-file!)
                      |j $ %{} :Leaf (:at 1578470537064) (:by |yeKFqj7rX) (:text |config-path)
                  |j $ %{} :Expr (:at 1578470550997) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578470551899) (:by |yeKFqj7rX) (:text |gaze)
                      |j $ %{} :Leaf (:at 1578470559041) (:by |yeKFqj7rX) (:text |config-path)
                      |r $ %{} :Expr (:at 1578470562821) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578470563085) (:by |yeKFqj7rX) (:text |fn)
                          |j $ %{} :Expr (:at 1578470563568) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578470564375) (:by |yeKFqj7rX) (:text |err)
                              |j $ %{} :Leaf (:at 1578470567142) (:by |yeKFqj7rX) (:text |watcher)
                          |r $ %{} :Expr (:at 1578470573998) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1673283724223) (:by |yeKFqj7rX) (:text |.!on)
                              |j $ %{} :Leaf (:at 1578470576706) (:by |yeKFqj7rX) (:text |watcher)
                              |r $ %{} :Leaf (:at 1578470578197) (:by |yeKFqj7rX) (:text "|\"changed")
                              |v $ %{} :Expr (:at 1578470583146) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578470583487) (:by |yeKFqj7rX) (:text |fn)
                                  |j $ %{} :Expr (:at 1578470583776) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1706100489220) (:by |yeKFqj7rX) (:text |e)
                                  |r $ %{} :Expr (:at 1578470584466) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578470589307) (:by |yeKFqj7rX) (:text |load-config-from-file!)
                                      |j $ %{} :Leaf (:at 1578470593027) (:by |yeKFqj7rX) (:text |config-path)
        |load-config-from-file! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578470530362) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |load-config-from-file!)
              |n $ %{} :Expr (:at 1578470531433) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578470532979) (:by |yeKFqj7rX) (:text |config-path)
              |r $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |let)
                  |j $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |ext)
                          |j $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |path/extname)
                              |j $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |config-path)
                      |j $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |content)
                          |j $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |fs/readFileSync)
                              |j $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |config-path)
                              |r $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text "|\"utf8")
                      |r $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |result)
                          |j $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1673283578717) (:by |yeKFqj7rX) (:text |case-default)
                              |j $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |ext)
                              |n $ %{} :Expr (:at 1673283582042) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1673283582042) (:by |yeKFqj7rX) (:text |do)
                                  |b $ %{} :Expr (:at 1673283582042) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1673283582042) (:by |yeKFqj7rX) (:text |println)
                                      |b $ %{} :Leaf (:at 1673283582042) (:by |yeKFqj7rX) (:text "|\"Unknown config file")
                                      |h $ %{} :Leaf (:at 1673283582042) (:by |yeKFqj7rX) (:text |config-path)
                              |r $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text "|\".cirru")
                                  |j $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1673283631003) (:by |yeKFqj7rX) (:text |parse-cirru-edn)
                                      |j $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |content)
                              |t $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1706099572590) (:by |yeKFqj7rX) (:text "|\".json")
                                  |j $ %{} :Expr (:at 1706099587003) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1706099591635) (:by |yeKFqj7rX) (:text |->)
                                      |b $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |content)
                                      |h $ %{} :Leaf (:at 1706099595777) (:by |yeKFqj7rX) (:text |js/JSON.parse)
                                      |l $ %{} :Leaf (:at 1706099606762) (:by |yeKFqj7rX) (:text |to-calcit-data)
                                      |o $ %{} :Leaf (:at 1706099609434) (:by |yeKFqj7rX) (:text |tagging-edn)
                              |u $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1706099577713) (:by |yeKFqj7rX) (:text "|\".json5")
                                  |j $ %{} :Expr (:at 1706099612293) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1706099612293) (:by |yeKFqj7rX) (:text |->)
                                      |h $ %{} :Expr (:at 1706099707021) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1706099708730) (:by |yeKFqj7rX) (:text |.!parse)
                                          |T $ %{} :Leaf (:at 1706099705701) (:by |yeKFqj7rX) (:text |JSON5)
                                          |b $ %{} :Leaf (:at 1706099724162) (:by |yeKFqj7rX) (:text |content)
                                      |l $ %{} :Leaf (:at 1706099612293) (:by |yeKFqj7rX) (:text |to-calcit-data)
                                      |o $ %{} :Leaf (:at 1706099612293) (:by |yeKFqj7rX) (:text |tagging-edn)
                      |v $ %{} :Expr (:at 1579851469965) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851533720) (:by |yeKFqj7rX) (:text |validation)
                          |j $ %{} :Expr (:at 1579851486009) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851497032) (:by |yeKFqj7rX) (:text |validate-lilac)
                              |j $ %{} :Leaf (:at 1579851505817) (:by |yeKFqj7rX) (:text |result)
                              |r $ %{} :Expr (:at 1579851641412) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1579851519100) (:by |yeKFqj7rX) (:text |lilac-router+)
                  |l $ %{} :Expr (:at 1579851525741) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1579851526247) (:by |yeKFqj7rX) (:text |if)
                      |j $ %{} :Expr (:at 1579851527727) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851530128) (:by |yeKFqj7rX) (:text |:ok?)
                          |j $ %{} :Leaf (:at 1579851536667) (:by |yeKFqj7rX) (:text |validation)
                      |r $ %{} :Expr (:at 1579851537868) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851538982) (:by |yeKFqj7rX) (:text |println)
                          |j $ %{} :Leaf (:at 1579851544259) (:by |yeKFqj7rX) (:text "|\"passed validation")
                      |v $ %{} :Expr (:at 1579851546738) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1706099765959) (:by |yeKFqj7rX) (:text |println)
                          |j $ %{} :Expr (:at 1706099767365) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1706099769305) (:by |yeKFqj7rX) (:text |.!red)
                              |L $ %{} :Leaf (:at 1706099771572) (:by |yeKFqj7rX) (:text |chalk)
                              |T $ %{} :Expr (:at 1579851549911) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1579851553357) (:by |yeKFqj7rX) (:text |:formatted-message)
                                  |j $ %{} :Leaf (:at 1579851555965) (:by |yeKFqj7rX) (:text |validation)
                  |n $ %{} :Expr (:at 1578470602903) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578470602903) (:by |yeKFqj7rX) (:text |println)
                      |j $ %{} :Leaf (:at 1578471878310) (:by |yeKFqj7rX) (:text "|\"Loaded config from")
                      |r $ %{} :Leaf (:at 1578470602903) (:by |yeKFqj7rX) (:text |config-path)
                  |r $ %{} :Expr (:at 1578470528279) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |reset!)
                      |j $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |*configs)
                      |r $ %{} :Leaf (:at 1578470528279) (:by |yeKFqj7rX) (:text |result)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1580789225838) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1580789225838) (:by |yeKFqj7rX) (:text |ns)
            |j $ %{} :Leaf (:at 1580789225838) (:by |yeKFqj7rX) (:text |app.config)
            |r $ %{} :Expr (:at 1580789259701) (:by |yeKFqj7rX)
              :data $ {}
                |T $ %{} :Leaf (:at 1580789261392) (:by |yeKFqj7rX) (:text |:require)
                |j $ %{} :Expr (:at 1580789262412) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789263287) (:by |yeKFqj7rX) (:text "|\"fs")
                    |r $ %{} :Leaf (:at 1580789263777) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1580789264111) (:by |yeKFqj7rX) (:text |fs)
                |r $ %{} :Expr (:at 1580789318247) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789318247) (:by |yeKFqj7rX) (:text "|\"gaze")
                    |r $ %{} :Leaf (:at 1673283718284) (:by |yeKFqj7rX) (:text |:default)
                    |v $ %{} :Leaf (:at 1580789318247) (:by |yeKFqj7rX) (:text |gaze)
                |v $ %{} :Expr (:at 1580789328743) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789328743) (:by |yeKFqj7rX) (:text "|\"chalk")
                    |r $ %{} :Leaf (:at 1706099937315) (:by |yeKFqj7rX) (:text |:default)
                    |v $ %{} :Leaf (:at 1580789328743) (:by |yeKFqj7rX) (:text |chalk)
                |w $ %{} :Expr (:at 1580789446690) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789446690) (:by |yeKFqj7rX) (:text "|\"path")
                    |r $ %{} :Leaf (:at 1580789446690) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1580789446690) (:by |yeKFqj7rX) (:text |path)
                |x $ %{} :Expr (:at 1580789345468) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789345468) (:by |yeKFqj7rX) (:text |app.router)
                    |r $ %{} :Leaf (:at 1580789345468) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1580789345468) (:by |yeKFqj7rX)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580789345468) (:by |yeKFqj7rX) (:text |lilac-router+)
                |y $ %{} :Expr (:at 1580789357223) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789357223) (:by |yeKFqj7rX) (:text |lilac.core)
                    |r $ %{} :Leaf (:at 1580789357223) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1580789357223) (:by |yeKFqj7rX)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580789357223) (:by |yeKFqj7rX) (:text |validate-lilac)
                |z $ %{} :Expr (:at 1706099623126) (:by |yeKFqj7rX)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1706099624684) (:by |yeKFqj7rX) (:text "|\"json5")
                    |b $ %{} :Leaf (:at 1706099702333) (:by |yeKFqj7rX) (:text |:default)
                    |h $ %{} :Leaf (:at 1706099629694) (:by |yeKFqj7rX) (:text |JSON5)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*proxy $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1585020857871) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1673283765438) (:by |yeKFqj7rX) (:text |defatom)
              |j $ %{} :Leaf (:at 1673283780425) (:by |yeKFqj7rX) (:text |*proxy)
              |r $ %{} :Expr (:at 1585020857871) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1673284265985) (:by |yeKFqj7rX) (:text |.!createProxy)
                  |T $ %{} :Leaf (:at 1673284264545) (:by |yeKFqj7rX) (:text |http-proxy)
                  |r $ %{} :Expr (:at 1585020886247) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1673283773457) (:by |yeKFqj7rX) (:text |js-object)
        |handle-request! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578370584199) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578370586371) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578370584199) (:by |yeKFqj7rX) (:text |handle-request!)
              |r $ %{} :Expr (:at 1578370584199) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578370587666) (:by |yeKFqj7rX) (:text |req)
                  |j $ %{} :Leaf (:at 1585020670098) (:by |yeKFqj7rX) (:text |res)
              |v $ %{} :Expr (:at 1578370864059) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1578370864706) (:by |yeKFqj7rX) (:text |let)
                  |L $ %{} :Expr (:at 1578370865099) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Expr (:at 1578370865258) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578370866057) (:by |yeKFqj7rX) (:text |routes)
                          |j $ %{} :Expr (:at 1578370866832) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578370869606) (:by |yeKFqj7rX) (:text |:routes)
                              |j $ %{} :Leaf (:at 1578370882223) (:by |yeKFqj7rX) (:text |@*configs)
                      |V $ %{} :Expr (:at 1585020806199) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1585021020966) (:by |yeKFqj7rX) (:text |fallback-host)
                          |j $ %{} :Expr (:at 1585020814866) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1585021019474) (:by |yeKFqj7rX) (:text |:fallback-host)
                              |j $ %{} :Leaf (:at 1585020822779) (:by |yeKFqj7rX) (:text |@*configs)
                      |X $ %{} :Expr (:at 1578472967360) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578472999490) (:by |yeKFqj7rX) (:text |pathname)
                          |j $ %{} :Expr (:at 1578562704366) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1578562711104) (:by |yeKFqj7rX) (:text |first)
                              |T $ %{} :Expr (:at 1578562711472) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1673283509532) (:by |yeKFqj7rX) (:text |.split)
                                  |T $ %{} :Expr (:at 1578472983404) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578472983404) (:by |yeKFqj7rX) (:text |:url)
                                      |j $ %{} :Leaf (:at 1578472983404) (:by |yeKFqj7rX) (:text |req)
                                  |b $ %{} :Leaf (:at 1578562716515) (:by |yeKFqj7rX) (:text "|\"?")
                      |b $ %{} :Expr (:at 1578370962948) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578370965000) (:by |yeKFqj7rX) (:text |segments)
                          |j $ %{} :Expr (:at 1578372487269) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578372489650) (:by |yeKFqj7rX) (:text |split-path)
                              |j $ %{} :Leaf (:at 1578473000864) (:by |yeKFqj7rX) (:text |pathname)
                      |j $ %{} :Expr (:at 1578371309762) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1580795163611) (:by |yeKFqj7rX) (:text |rule-result)
                          |T $ %{} :Expr (:at 1578370890505) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578370894285) (:by |yeKFqj7rX) (:text |find-match-rule)
                              |b $ %{} :Leaf (:at 1578371009755) (:by |yeKFqj7rX) (:text |segments)
                              |j $ %{} :Leaf (:at 1578370899245) (:by |yeKFqj7rX) (:text |routes)
                      |r $ %{} :Expr (:at 1578471990085) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578471990085) (:by |yeKFqj7rX) (:text |info)
                          |j $ %{} :Expr (:at 1578471990085) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578471990085) (:by |yeKFqj7rX) (:text |get)
                              |j $ %{} :Expr (:at 1580794970589) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1580794973446) (:by |yeKFqj7rX) (:text |:rule)
                                  |T $ %{} :Leaf (:at 1578471990085) (:by |yeKFqj7rX) (:text |rule-result)
                              |r $ %{} :Expr (:at 1578471990085) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578471990085) (:by |yeKFqj7rX) (:text |:method)
                                  |j $ %{} :Leaf (:at 1578471990085) (:by |yeKFqj7rX) (:text |req)
                      |v $ %{} :Expr (:at 1578472343588) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578472345957) (:by |yeKFqj7rX) (:text |file-type)
                          |j $ %{} :Expr (:at 1578472347324) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578472349923) (:by |yeKFqj7rX) (:text |:type)
                              |j $ %{} :Leaf (:at 1578472350420) (:by |yeKFqj7rX) (:text |info)
                      |x $ %{} :Expr (:at 1673284577493) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583306782462) (:by |yeKFqj7rX) (:text |cors-header)
                          |j $ %{} :Expr (:at 1583306782877) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1583306783294) (:by |yeKFqj7rX) (:text |{})
                              |j $ %{} :Expr (:at 1583306783574) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1583306799811) (:by |yeKFqj7rX) (:text "|\"Access-Control-Allow-Credentials")
                                  |j $ %{} :Leaf (:at 1583306800898) (:by |yeKFqj7rX) (:text |true)
                              |n $ %{} :Expr (:at 1585044126717) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585044128488) (:by |yeKFqj7rX) (:text "|\"Access-Control-Allow-Methods")
                                  |j $ %{} :Leaf (:at 1585044138848) (:by |yeKFqj7rX) (:text "|\"PUT,POST,DELETE")
                              |r $ %{} :Expr (:at 1583306807671) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1583306809213) (:by |yeKFqj7rX) (:text "|\"Access-Control-Allow-Origin")
                                  |j $ %{} :Expr (:at 1583724855075) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1583724855075) (:by |yeKFqj7rX) (:text |:origin)
                                      |j $ %{} :Expr (:at 1583724855075) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1583724855075) (:by |yeKFqj7rX) (:text |:headers)
                                          |j $ %{} :Leaf (:at 1583724855075) (:by |yeKFqj7rX) (:text |req)
                              |v $ %{} :Expr (:at 1585045236549) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585045238878) (:by |yeKFqj7rX) (:text "|\"Access-Control-Allow-Headers")
                                  |j $ %{} :Leaf (:at 1585045244665) (:by |yeKFqj7rX) (:text "|\"Content-Type")
                  |P $ %{} :Expr (:at 1578371325088) (:by |yeKFqj7rX)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1578657895458) (:by |yeKFqj7rX) (:text |;)
                      |T $ %{} :Leaf (:at 1578371325813) (:by |yeKFqj7rX) (:text |println)
                      |j $ %{} :Leaf (:at 1578371329393) (:by |yeKFqj7rX) (:text "|\"find rule")
                      |n $ %{} :Leaf (:at 1578473051495) (:by |yeKFqj7rX) (:text |pathname)
                      |r $ %{} :Leaf (:at 1578371329867) (:by |yeKFqj7rX) (:text |rule-result)
                      |v $ %{} :Leaf (:at 1578657277219) (:by |yeKFqj7rX) (:text |info)
                      |x $ %{} :Expr (:at 1578657293804) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578657293804) (:by |yeKFqj7rX) (:text |:method)
                          |j $ %{} :Leaf (:at 1578657293804) (:by |yeKFqj7rX) (:text |req)
                  |T $ %{} :Expr (:at 1578472001253) (:by |yeKFqj7rX)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1578472002168) (:by |yeKFqj7rX) (:text |cond)
                      |H $ %{} :Expr (:at 1578473158554) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1578473163160) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578473158861) (:by |yeKFqj7rX) (:text |=)
                              |j $ %{} :Leaf (:at 1578473165911) (:by |yeKFqj7rX) (:text |pathname)
                              |r $ %{} :Leaf (:at 1578473167352) (:by |yeKFqj7rX) (:text "|\"/")
                          |j $ %{} :Expr (:at 1578473171822) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578473171694) (:by |yeKFqj7rX) (:text |{})
                              |j $ %{} :Expr (:at 1578473172411) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578473173859) (:by |yeKFqj7rX) (:text |:code)
                                  |j $ %{} :Leaf (:at 1578473175290) (:by |yeKFqj7rX) (:text |200)
                              |r $ %{} :Expr (:at 1578473175763) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578473178617) (:by |yeKFqj7rX) (:text |:message)
                                  |j $ %{} :Leaf (:at 1578473180726) (:by |yeKFqj7rX) (:text "|\"OK")
                              |v $ %{} :Expr (:at 1578473181734) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578473183353) (:by |yeKFqj7rX) (:text |:headers)
                                  |j $ %{} :Expr (:at 1583306908658) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1583306909811) (:by |yeKFqj7rX) (:text |merge)
                                      |L $ %{} :Leaf (:at 1583306910677) (:by |yeKFqj7rX) (:text |cors-header)
                                      |T $ %{} :Leaf (:at 1580795623601) (:by |yeKFqj7rX) (:text |schema/json-header)
                              |x $ %{} :Expr (:at 1578473188479) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578473191852) (:by |yeKFqj7rX) (:text |:body)
                                  |j $ %{} :Expr (:at 1580795765555) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1580795770301) (:by |yeKFqj7rX) (:text |js/JSON.stringify)
                                      |T $ %{} :Expr (:at 1580795626304) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1673283883893) (:by |yeKFqj7rX) (:text |js-object)
                                          |L $ %{} :Expr (:at 1580795627712) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1580795630369) (:by |yeKFqj7rX) (:text |:message)
                                              |j $ %{} :Expr (:at 1580795638093) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1580795638093) (:by |yeKFqj7rX) (:text |str)
                                                  |j $ %{} :Leaf (:at 1580795638093) (:by |yeKFqj7rX) (:text "|\"This is a JSON mocking server.")
                                          |f $ %{} :Expr (:at 1580795640420) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1580795647071) (:by |yeKFqj7rX) (:text |:choices)
                                              |j $ %{} :Expr (:at 1673283898118) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1673283901855) (:by |yeKFqj7rX) (:text |to-js-data)
                                                  |T $ %{} :Expr (:at 1580795650606) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1580795653321) (:by |yeKFqj7rX) (:text |list-paths)
                                                      |j $ %{} :Leaf (:at 1580795656878) (:by |yeKFqj7rX) (:text |routes)
                                      |j $ %{} :Leaf (:at 1580795773519) (:by |yeKFqj7rX) (:text |nil)
                                      |r $ %{} :Leaf (:at 1580795773824) (:by |yeKFqj7rX) (:text |2)
                      |J $ %{} :Expr (:at 1585044064448) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1585044069419) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1585044069645) (:by |yeKFqj7rX) (:text |=)
                              |j $ %{} :Leaf (:at 1585044074531) (:by |yeKFqj7rX) (:text |:options)
                              |r $ %{} :Expr (:at 1585044074787) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585044075556) (:by |yeKFqj7rX) (:text |:method)
                                  |j $ %{} :Leaf (:at 1585044076069) (:by |yeKFqj7rX) (:text |req)
                          |j $ %{} :Expr (:at 1585044078176) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1585044078538) (:by |yeKFqj7rX) (:text |{})
                              |j $ %{} :Expr (:at 1585044078818) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585044080372) (:by |yeKFqj7rX) (:text |:code)
                                  |j $ %{} :Leaf (:at 1585044081139) (:by |yeKFqj7rX) (:text |200)
                              |r $ %{} :Expr (:at 1585044082112) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585044083768) (:by |yeKFqj7rX) (:text |:message)
                                  |j $ %{} :Leaf (:at 1585044084439) (:by |yeKFqj7rX) (:text "|\"OK")
                              |t $ %{} :Expr (:at 1585044091975) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585044091975) (:by |yeKFqj7rX) (:text |:headers)
                                  |j $ %{} :Expr (:at 1585044091975) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1585044091975) (:by |yeKFqj7rX) (:text |merge)
                                      |j $ %{} :Leaf (:at 1585044091975) (:by |yeKFqj7rX) (:text |cors-header)
                              |v $ %{} :Expr (:at 1585044085119) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585044085988) (:by |yeKFqj7rX) (:text |:body)
                                  |j $ %{} :Leaf (:at 1585044087469) (:by |yeKFqj7rX) (:text "|\"OK")
                      |L $ %{} :Expr (:at 1578473105981) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1578473105981) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578473105981) (:by |yeKFqj7rX) (:text |=)
                              |j $ %{} :Leaf (:at 1578473105981) (:by |yeKFqj7rX) (:text |pathname)
                              |r $ %{} :Leaf (:at 1578473105981) (:by |yeKFqj7rX) (:text "|\"/favicon.ico")
                          |j $ %{} :Expr (:at 1578473105981) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578473105981) (:by |yeKFqj7rX) (:text |{})
                              |j $ %{} :Expr (:at 1578473105981) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578473105981) (:by |yeKFqj7rX) (:text |:code)
                                  |j $ %{} :Leaf (:at 1580788603204) (:by |yeKFqj7rX) (:text |301)
                              |v $ %{} :Expr (:at 1578473105981) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578473105981) (:by |yeKFqj7rX) (:text |:headers)
                                  |j $ %{} :Expr (:at 1580788629347) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1580788629825) (:by |yeKFqj7rX) (:text |{})
                                      |j $ %{} :Expr (:at 1580788631039) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1580788633265) (:by |yeKFqj7rX) (:text |:Location)
                                          |j $ %{} :Leaf (:at 1580788633974) (:by |yeKFqj7rX) (:text "|\"http://cdn.tiye.me/logo/jimeng-360x360.png")
                      |T $ %{} :Expr (:at 1578376332301) (:by |yeKFqj7rX)
                        :data $ {}
                          |L $ %{} :Expr (:at 1585044232818) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1585044233487) (:by |yeKFqj7rX) (:text |or)
                              |T $ %{} :Expr (:at 1580794983803) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1580794985795) (:by |yeKFqj7rX) (:text |not)
                                  |T $ %{} :Expr (:at 1578376336547) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1580794983208) (:by |yeKFqj7rX) (:text |:ok?)
                                      |j $ %{} :Leaf (:at 1578376339911) (:by |yeKFqj7rX) (:text |rule-result)
                              |j $ %{} :Expr (:at 1585044235459) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585044236321) (:by |yeKFqj7rX) (:text |nil?)
                                  |j $ %{} :Leaf (:at 1585044237995) (:by |yeKFqj7rX) (:text |info)
                          |T $ %{} :Expr (:at 1585020800843) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1585020801581) (:by |yeKFqj7rX) (:text |if)
                              |L $ %{} :Expr (:at 1585020828034) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585020828799) (:by |yeKFqj7rX) (:text |some?)
                                  |j $ %{} :Leaf (:at 1585021026338) (:by |yeKFqj7rX) (:text |fallback-host)
                              |P $ %{} :Expr (:at 1585020927590) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1585020928116) (:by |yeKFqj7rX) (:text |do)
                                  |L $ %{} :Expr (:at 1585021145680) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1585021146845) (:by |yeKFqj7rX) (:text |println)
                                      |T $ %{} :Expr (:at 1585020933943) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1673284871878) (:by |yeKFqj7rX) (:text |.!gray)
                                          |T $ %{} :Leaf (:at 1673284870057) (:by |yeKFqj7rX) (:text |chalk)
                                          |j $ %{} :Leaf (:at 1585020956420) (:by |yeKFqj7rX) (:text "|\"proxy to")
                                          |r $ %{} :Leaf (:at 1585021027479) (:by |yeKFqj7rX) (:text |fallback-host)
                                          |v $ %{} :Leaf (:at 1585020964131) (:by |yeKFqj7rX) (:text |pathname)
                                  |T $ %{} :Expr (:at 1596168598738) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1596168600607) (:by |yeKFqj7rX) (:text |try)
                                      |T $ %{} :Expr (:at 1585020831321) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1673283791816) (:by |yeKFqj7rX) (:text |.!web)
                                          |T $ %{} :Leaf (:at 1673283813612) (:by |yeKFqj7rX) (:text |@*proxy)
                                          |j $ %{} :Expr (:at 1585020902088) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1585020906233) (:by |yeKFqj7rX) (:text |:original-request)
                                              |j $ %{} :Leaf (:at 1585020906868) (:by |yeKFqj7rX) (:text |req)
                                          |r $ %{} :Leaf (:at 1585020909229) (:by |yeKFqj7rX) (:text |res)
                                          |v $ %{} :Expr (:at 1585020915172) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1673283916725) (:by |yeKFqj7rX) (:text |js-object)
                                              |j $ %{} :Expr (:at 1585020915766) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1585020917330) (:by |yeKFqj7rX) (:text |:target)
                                                  |j $ %{} :Leaf (:at 1585021028627) (:by |yeKFqj7rX) (:text |fallback-host)
                                      |j $ %{} :Expr (:at 1596168601275) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1673283798415) (:by |yeKFqj7rX) (:text |fn)
                                          |r $ %{} :Expr (:at 1673283798916) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1596168607493) (:by |yeKFqj7rX) (:text |err)
                                          |v $ %{} :Expr (:at 1596168615132) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1596168615132) (:by |yeKFqj7rX) (:text |{})
                                              |j $ %{} :Expr (:at 1596168615132) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1596168615132) (:by |yeKFqj7rX) (:text |:code)
                                                  |j $ %{} :Leaf (:at 1596168618033) (:by |yeKFqj7rX) (:text |500)
                                              |r $ %{} :Expr (:at 1596168623490) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1596168615132) (:by |yeKFqj7rX) (:text |:message)
                                                  |j $ %{} :Leaf (:at 1596168643332) (:by |yeKFqj7rX) (:text "|\"Failed to access fallback host")
                                              |v $ %{} :Expr (:at 1596168615132) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1596168615132) (:by |yeKFqj7rX) (:text |:headers)
                                                  |j $ %{} :Expr (:at 1596168615132) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1596168615132) (:by |yeKFqj7rX) (:text |merge)
                                                      |j $ %{} :Leaf (:at 1596168615132) (:by |yeKFqj7rX) (:text |cors-header)
                                                      |r $ %{} :Leaf (:at 1596168615132) (:by |yeKFqj7rX) (:text |schema/json-header)
                                              |x $ %{} :Expr (:at 1596168615132) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1596168615132) (:by |yeKFqj7rX) (:text |:body)
                                                  |j $ %{} :Leaf (:at 1596168620680) (:by |yeKFqj7rX) (:text |err)
                                  |j $ %{} :Leaf (:at 1585020931835) (:by |yeKFqj7rX) (:text |:effect)
                              |T $ %{} :Expr (:at 1578472721663) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1578472722194) (:by |yeKFqj7rX) (:text |do)
                                  |L $ %{} :Expr (:at 1578472722721) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578472722721) (:by |yeKFqj7rX) (:text |println)
                                      |j $ %{} :Leaf (:at 1578544203944) (:by |yeKFqj7rX) (:text |404)
                                      |r $ %{} :Leaf (:at 1578473017380) (:by |yeKFqj7rX) (:text |pathname)
                                  |T $ %{} :Expr (:at 1578370592515) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578370595925) (:by |yeKFqj7rX) (:text |{})
                                      |j $ %{} :Expr (:at 1578370705809) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1578370706294) (:by |yeKFqj7rX) (:text |:code)
                                          |j $ %{} :Leaf (:at 1578544202165) (:by |yeKFqj7rX) (:text |400)
                                      |r $ %{} :Expr (:at 1578370707684) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1578370709868) (:by |yeKFqj7rX) (:text |:message)
                                          |j $ %{} :Leaf (:at 1578472183798) (:by |yeKFqj7rX) (:text "|\"Not matching")
                                      |t $ %{} :Expr (:at 1578370771194) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1578370773850) (:by |yeKFqj7rX) (:text |:headers)
                                          |j $ %{} :Expr (:at 1583306904670) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1583306905681) (:by |yeKFqj7rX) (:text |merge)
                                              |L $ %{} :Leaf (:at 1583306906055) (:by |yeKFqj7rX) (:text |cors-header)
                                              |T $ %{} :Leaf (:at 1580795027886) (:by |yeKFqj7rX) (:text |schema/json-header)
                                      |v $ %{} :Expr (:at 1578370714305) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1578370719589) (:by |yeKFqj7rX) (:text |:body)
                                          |j $ %{} :Expr (:at 1580795124272) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1580795130663) (:by |yeKFqj7rX) (:text |js/JSON.stringify)
                                              |T $ %{} :Expr (:at 1580795106262) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1673283925066) (:by |yeKFqj7rX) (:text |js-object)
                                                  |T $ %{} :Expr (:at 1580795038176) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1580795049110) (:by |yeKFqj7rX) (:text |:message)
                                                      |T $ %{} :Expr (:at 1578472439716) (:by |yeKFqj7rX)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1578472439716) (:by |yeKFqj7rX) (:text |str)
                                                          |j $ %{} :Leaf (:at 1578472439716) (:by |yeKFqj7rX) (:text "|\"No matching path for ")
                                                          |r $ %{} :Leaf (:at 1578472995614) (:by |yeKFqj7rX) (:text |pathname)
                                                  |b $ %{} :Expr (:at 1580795049621) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1580795051939) (:by |yeKFqj7rX) (:text |:reason)
                                                      |j $ %{} :Expr (:at 1673283926943) (:by |yeKFqj7rX)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1673283930006) (:by |yeKFqj7rX) (:text |to-js-data)
                                                          |T $ %{} :Leaf (:at 1580795057554) (:by |yeKFqj7rX) (:text |rule-result)
                                              |j $ %{} :Leaf (:at 1580795134368) (:by |yeKFqj7rX) (:text |nil)
                                              |r $ %{} :Leaf (:at 1580795135076) (:by |yeKFqj7rX) (:text |2)
                      |b $ %{} :Expr (:at 1578472310526) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1578472317153) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578659631950) (:by |yeKFqj7rX) (:text |file?)
                              |r $ %{} :Leaf (:at 1578472354827) (:by |yeKFqj7rX) (:text |file-type)
                          |j $ %{} :Expr (:at 1596166958097) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1596166959208) (:by |yeKFqj7rX) (:text |fn)
                              |L $ %{} :Expr (:at 1596166960660) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1596166961344) (:by |yeKFqj7rX) (:text |send!)
                              |T $ %{} :Expr (:at 1578472331537) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578472331537) (:by |yeKFqj7rX) (:text |let)
                                  |j $ %{} :Expr (:at 1578472331537) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1578472331537) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1578472331537) (:by |yeKFqj7rX) (:text |mock-path)
                                          |j $ %{} :Expr (:at 1578472331537) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1578472331537) (:by |yeKFqj7rX) (:text |:file)
                                              |j $ %{} :Leaf (:at 1578472331537) (:by |yeKFqj7rX) (:text |info)
                                  |n $ %{} :Expr (:at 1596166987476) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1596166987476) (:by |yeKFqj7rX) (:text |fs/access)
                                      |j $ %{} :Leaf (:at 1596166987476) (:by |yeKFqj7rX) (:text |mock-path)
                                      |r $ %{} :Expr (:at 1596166995026) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1596166995536) (:by |yeKFqj7rX) (:text |fn)
                                          |j $ %{} :Expr (:at 1596166995899) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1596166996963) (:by |yeKFqj7rX) (:text |err)
                                          |r $ %{} :Expr (:at 1596166999324) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1596167002144) (:by |yeKFqj7rX) (:text |if)
                                              |j $ %{} :Expr (:at 1596167002750) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1596167003687) (:by |yeKFqj7rX) (:text |some?)
                                                  |j $ %{} :Leaf (:at 1596167004862) (:by |yeKFqj7rX) (:text |err)
                                              |n $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |do)
                                                  |j $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |println)
                                                      |j $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text "|\"Need file")
                                                      |r $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |mock-path)
                                                  |r $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |send!)
                                                      |j $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |{})
                                                          |j $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |:code)
                                                              |j $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |404)
                                                          |r $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |:message)
                                                              |j $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text "|\"Unknown request")
                                                          |v $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |:headers)
                                                              |j $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |merge)
                                                                  |j $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |cors-header)
                                                                  |r $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |schema/html-header)
                                                          |x $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |:body)
                                                              |j $ %{} :Expr (:at 1596168929094) (:by |yeKFqj7rX)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |str)
                                                                  |j $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text |mock-path)
                                                                  |r $ %{} :Leaf (:at 1596168929094) (:by |yeKFqj7rX) (:text "|\" not found")
                                              |v $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |do)
                                                  |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |println)
                                                      |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1673284877736) (:by |yeKFqj7rX) (:text |.!gray)
                                                          |T $ %{} :Leaf (:at 1673284876044) (:by |yeKFqj7rX) (:text |chalk)
                                                          |j $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text "|\"sending")
                                                          |r $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |mock-path)
                                                          |v $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text "|\"to")
                                                          |x $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |pathname)
                                                  |r $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |delay!)
                                                      |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |or)
                                                          |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |:delay)
                                                              |j $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |info)
                                                          |r $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |0)
                                                      |r $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |fn)
                                                          |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                            :data $ {}
                                                          |r $ %{} :Expr (:at 1596167085622) (:by |yeKFqj7rX)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1596167089408) (:by |yeKFqj7rX) (:text |fs/readFile)
                                                              |L $ %{} :Leaf (:at 1596167108891) (:by |yeKFqj7rX) (:text |mock-path)
                                                              |P $ %{} :Leaf (:at 1596167125866) (:by |yeKFqj7rX) (:text "|\"utf8")
                                                              |T $ %{} :Expr (:at 1596167111834) (:by |yeKFqj7rX)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1596167114056) (:by |yeKFqj7rX) (:text |fn)
                                                                  |L $ %{} :Expr (:at 1596167114348) (:by |yeKFqj7rX)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1596167115877) (:by |yeKFqj7rX) (:text |err)
                                                                      |j $ %{} :Leaf (:at 1596167121896) (:by |yeKFqj7rX) (:text |content)
                                                                  |T $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |send!)
                                                                      |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |{})
                                                                          |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |:code)
                                                                              |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |or)
                                                                                  |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |:code)
                                                                                      |j $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |info)
                                                                                  |r $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |200)
                                                                          |r $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |:message)
                                                                              |j $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text "|\"OK")
                                                                          |v $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |:headers)
                                                                              |j $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |merge)
                                                                                  |j $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |cors-header)
                                                                                  |r $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |schema/json-header)
                                                                          |x $ %{} :Expr (:at 1596167057987) (:by |yeKFqj7rX)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1596167057987) (:by |yeKFqj7rX) (:text |:body)
                                                                              |j $ %{} :Leaf (:at 1596167131662) (:by |yeKFqj7rX) (:text |content)
                      |r $ %{} :Expr (:at 1578472030421) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1673283962128) (:by |yeKFqj7rX) (:text |true)
                          |T $ %{} :Expr (:at 1578472557971) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1578472558685) (:by |yeKFqj7rX) (:text |do)
                              |L $ %{} :Expr (:at 1578472559056) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585021140908) (:by |yeKFqj7rX) (:text |println)
                                  |j $ %{} :Leaf (:at 1578472575447) (:by |yeKFqj7rX) (:text "|\"Bad result for rule")
                                  |l $ %{} :Leaf (:at 1578473008389) (:by |yeKFqj7rX) (:text |pathname)
                                  |n $ %{} :Expr (:at 1578472591646) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578472592538) (:by |yeKFqj7rX) (:text |:method)
                                      |j $ %{} :Leaf (:at 1578472593505) (:by |yeKFqj7rX) (:text |req)
                                  |r $ %{} :Leaf (:at 1578472577107) (:by |yeKFqj7rX) (:text |info)
                              |T $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |{})
                                  |j $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |:code)
                                      |j $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |400)
                                  |r $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |:message)
                                      |j $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text "|\"Unknown request")
                                  |v $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |:headers)
                                      |j $ %{} :Expr (:at 1583306891699) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1583306892729) (:by |yeKFqj7rX) (:text |merge)
                                          |L $ %{} :Leaf (:at 1583306893153) (:by |yeKFqj7rX) (:text |cors-header)
                                          |T $ %{} :Leaf (:at 1580789077302) (:by |yeKFqj7rX) (:text |schema/json-header)
                                  |x $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |:body)
                                      |j $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1673283951256) (:by |yeKFqj7rX) (:text |js-object)
                                          |j $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |:code)
                                              |j $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |400)
                                          |r $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |:message)
                                              |j $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text "|\"Unknown rule")
                                          |v $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |:rule)
                                              |j $ %{} :Expr (:at 1673283952797) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1673283954658) (:by |yeKFqj7rX) (:text |to-js-data)
                                                  |T $ %{} :Expr (:at 1580794993772) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1580794996170) (:by |yeKFqj7rX) (:text |:rule)
                                                      |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |rule-result)
                                          |x $ %{} :Expr (:at 1578472122126) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |:info)
                                              |j $ %{} :Expr (:at 1673283955771) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1673283959918) (:by |yeKFqj7rX) (:text |to-js-data)
                                                  |T $ %{} :Leaf (:at 1578472122126) (:by |yeKFqj7rX) (:text |info)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1534483214794) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1534483214794) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1534483214794) (:by |yeKFqj7rX) (:text |main!)
              |r $ %{} :Expr (:at 1534483214794) (:by |yeKFqj7rX)
                :data $ {}
              |x $ %{} :Expr (:at 1578471812871) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578471812871) (:by |yeKFqj7rX) (:text |;)
                  |j $ %{} :Leaf (:at 1578471812871) (:by |yeKFqj7rX) (:text |println)
                  |r $ %{} :Leaf (:at 1578471812871) (:by |yeKFqj7rX) (:text |@*configs)
              |y $ %{} :Expr (:at 1578471812871) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578471812871) (:by |yeKFqj7rX) (:text |load-config!)
              |yT $ %{} :Expr (:at 1578471812871) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578471812871) (:by |yeKFqj7rX) (:text |skir/create-server!)
                  |j $ %{} :Expr (:at 1578471812871) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1673283741208) (:by |yeKFqj7rX) (:text |fn)
                      |f $ %{} :Expr (:at 1673283742720) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1673283744899) (:by |yeKFqj7rX) (:text |a)
                          |b $ %{} :Leaf (:at 1673283745577) (:by |yeKFqj7rX) (:text |b)
                      |j $ %{} :Expr (:at 1673284685735) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578471812871) (:by |yeKFqj7rX) (:text |handle-request!)
                          |b $ %{} :Leaf (:at 1673284687360) (:by |yeKFqj7rX) (:text |a)
                          |h $ %{} :Leaf (:at 1673284687623) (:by |yeKFqj7rX) (:text |b)
                  |r $ %{} :Expr (:at 1578471812871) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578471812871) (:by |yeKFqj7rX) (:text |{})
                      |j $ %{} :Expr (:at 1578471812871) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578471812871) (:by |yeKFqj7rX) (:text |:port)
                          |j $ %{} :Expr (:at 1578473696838) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578473698958) (:by |yeKFqj7rX) (:text |or)
                              |j $ %{} :Expr (:at 1578473699477) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578473699910) (:by |yeKFqj7rX) (:text |:port)
                                  |j $ %{} :Leaf (:at 1578473702788) (:by |yeKFqj7rX) (:text |@*configs)
                              |r $ %{} :Leaf (:at 1578473705260) (:by |yeKFqj7rX) (:text |7800)
              |yj $ %{} :Expr (:at 1578543731899) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578543731899) (:by |yeKFqj7rX) (:text |check-version!)
        |on-proxy-error $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1596169352540) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1596169394848) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1596169352540) (:by |yeKFqj7rX) (:text |on-proxy-error)
              |r $ %{} :Expr (:at 1596169355432) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |err)
                  |j $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |req)
                  |r $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |res)
              |v $ %{} :Expr (:at 1596169355432) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |js/console.log)
                  |j $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |err)
              |x $ %{} :Expr (:at 1596169355432) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |.end)
                  |j $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |res)
                  |r $ %{} :Expr (:at 1596169355432) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |str)
                      |j $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text "|\"No path matched: ")
                      |r $ %{} :Expr (:at 1596169355432) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |.-url)
                          |j $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |req)
                      |v $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |\newline)
                      |x $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |\newline)
                      |y $ %{} :Leaf (:at 1596169355432) (:by |yeKFqj7rX) (:text |err)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1534483216569) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1534483216569) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1534483216569) (:by |yeKFqj7rX) (:text |reload!)
              |r $ %{} :Expr (:at 1534483216569) (:by |yeKFqj7rX)
                :data $ {}
              |wT $ %{} :Expr (:at 1534483228056) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1534483228922) (:by |yeKFqj7rX) (:text |println)
                  |j $ %{} :Leaf (:at 1578473687286) (:by |yeKFqj7rX) (:text "|\"Reloaded.")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1534483212338) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1534483212338) (:by |yeKFqj7rX) (:text |ns)
            |j $ %{} :Leaf (:at 1534483212338) (:by |yeKFqj7rX) (:text |app.main)
            |r $ %{} :Expr (:at 1534483679032) (:by |yeKFqj7rX)
              :data $ {}
                |T $ %{} :Leaf (:at 1534483683346) (:by |yeKFqj7rX) (:text |:require)
                |j $ %{} :Expr (:at 1534483683751) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1578370551544) (:by |yeKFqj7rX) (:text |skir.core)
                    |r $ %{} :Leaf (:at 1534483751588) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1578370561069) (:by |yeKFqj7rX) (:text |skir)
                |r $ %{} :Expr (:at 1578370397321) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1673197146915) (:by |yeKFqj7rX) (:text "|\"node:fs")
                    |r $ %{} :Leaf (:at 1578370400725) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1578370401090) (:by |yeKFqj7rX) (:text |fs)
                |v $ %{} :Expr (:at 1578370402014) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1673197149575) (:by |yeKFqj7rX) (:text "|\"node:path")
                    |r $ %{} :Leaf (:at 1578370404715) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1578370405543) (:by |yeKFqj7rX) (:text |path)
                |yr $ %{} :Expr (:at 1578543753058) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1578543753058) (:by |yeKFqj7rX) (:text "|\"latest-version")
                    |r $ %{} :Leaf (:at 1578543753058) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1578543753058) (:by |yeKFqj7rX) (:text |latest-version)
                |yv $ %{} :Expr (:at 1578543786851) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1578543790120) (:by |yeKFqj7rX) (:text "|\"chalk")
                    |r $ %{} :Leaf (:at 1673284863293) (:by |yeKFqj7rX) (:text |:default)
                    |v $ %{} :Leaf (:at 1578543791667) (:by |yeKFqj7rX) (:text |chalk)
                |yyr $ %{} :Expr (:at 1580788781491) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580788781491) (:by |yeKFqj7rX) (:text |app.util)
                    |r $ %{} :Leaf (:at 1580788781491) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1580788781491) (:by |yeKFqj7rX)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580788781491) (:by |yeKFqj7rX) (:text |check-version!)
                        |r $ %{} :Leaf (:at 1580788838757) (:by |yeKFqj7rX) (:text |file?)
                        |v $ %{} :Leaf (:at 1580788975885) (:by |yeKFqj7rX) (:text |split-path)
                        |x $ %{} :Leaf (:at 1583725415544) (:by |yeKFqj7rX) (:text |delay!)
                |yyv $ %{} :Expr (:at 1580789054727) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789057753) (:by |yeKFqj7rX) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1580789058152) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1580789060882) (:by |yeKFqj7rX) (:text |schema)
                |yyx $ %{} :Expr (:at 1580789152982) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789155578) (:by |yeKFqj7rX) (:text |app.path)
                    |r $ %{} :Leaf (:at 1580789156369) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1580789156651) (:by |yeKFqj7rX)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1580789157178) (:by |yeKFqj7rX) (:text |find-match-rule)
                        |j $ %{} :Leaf (:at 1580795664005) (:by |yeKFqj7rX) (:text |list-paths)
                |yyy $ %{} :Expr (:at 1580789278240) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789280150) (:by |yeKFqj7rX) (:text |app.config)
                    |r $ %{} :Leaf (:at 1580789288549) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1580789288769) (:by |yeKFqj7rX)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580789290839) (:by |yeKFqj7rX) (:text |*configs)
                        |r $ %{} :Leaf (:at 1580789302381) (:by |yeKFqj7rX) (:text |load-config!)
                |yyyT $ %{} :Expr (:at 1585020844118) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1585020847073) (:by |yeKFqj7rX) (:text "|\"http-proxy")
                    |r $ %{} :Leaf (:at 1673284268530) (:by |yeKFqj7rX) (:text |:default)
                    |v $ %{} :Leaf (:at 1585020850885) (:by |yeKFqj7rX) (:text |http-proxy)
    |app.path $ %{} :FileEntry
      :defs $ {}
        |find-match-rule $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578370903779) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578370906031) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578370903779) (:by |yeKFqj7rX) (:text |find-match-rule)
              |r $ %{} :Expr (:at 1578370903779) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1578371012773) (:by |yeKFqj7rX) (:text |segments)
                  |T $ %{} :Leaf (:at 1578372297618) (:by |yeKFqj7rX) (:text |rules)
              |x $ %{} :Expr (:at 1578371538800) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1578371539427) (:by |yeKFqj7rX) (:text |let)
                  |T $ %{} :Expr (:at 1578371541552) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Expr (:at 1578371541724) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1578373032145) (:by |yeKFqj7rX) (:text |current-match)
                          |T $ %{} :Expr (:at 1578371394332) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578371396792) (:by |yeKFqj7rX) (:text |loop)
                              |j $ %{} :Expr (:at 1578371399830) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1578371400019) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1578372298766) (:by |yeKFqj7rX) (:text |xs)
                                      |T $ %{} :Leaf (:at 1578372296282) (:by |yeKFqj7rX) (:text |rules)
                              |r $ %{} :Expr (:at 1578372278698) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1578372280186) (:by |yeKFqj7rX) (:text |let)
                                  |L $ %{} :Expr (:at 1578372280407) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1578372280541) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1578372281888) (:by |yeKFqj7rX) (:text |cursor)
                                          |j $ %{} :Expr (:at 1578372282727) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1578372284109) (:by |yeKFqj7rX) (:text |first)
                                              |j $ %{} :Leaf (:at 1578372299831) (:by |yeKFqj7rX) (:text |xs)
                                  |P $ %{} :Expr (:at 1578372302598) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1578372757129) (:by |yeKFqj7rX) (:text |;)
                                      |T $ %{} :Leaf (:at 1578372302598) (:by |yeKFqj7rX) (:text |println)
                                      |j $ %{} :Leaf (:at 1578372302598) (:by |yeKFqj7rX) (:text "|\"compare")
                                      |r $ %{} :Leaf (:at 1578372302598) (:by |yeKFqj7rX) (:text |segments)
                                      |v $ %{} :Leaf (:at 1578372302598) (:by |yeKFqj7rX) (:text "|\"to")
                                      |x $ %{} :Leaf (:at 1578372302598) (:by |yeKFqj7rX) (:text |cursor)
                                  |T $ %{} :Expr (:at 1578371524603) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1578371525981) (:by |yeKFqj7rX) (:text |if)
                                      |L $ %{} :Expr (:at 1578371526206) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1578371527993) (:by |yeKFqj7rX) (:text |empty?)
                                          |j $ %{} :Leaf (:at 1578372367904) (:by |yeKFqj7rX) (:text |xs)
                                      |P $ %{} :Leaf (:at 1578371533367) (:by |yeKFqj7rX) (:text |nil)
                                      |T $ %{} :Expr (:at 1578371412425) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1578371495934) (:by |yeKFqj7rX) (:text |let)
                                          |j $ %{} :Expr (:at 1578371496437) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1578371496606) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1578371499306) (:by |yeKFqj7rX) (:text |result)
                                                  |T $ %{} :Expr (:at 1578371462903) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1578371466616) (:by |yeKFqj7rX) (:text |match-path)
                                                      |b $ %{} :Leaf (:at 1578371487363) (:by |yeKFqj7rX) (:text |segments)
                                                      |j $ %{} :Expr (:at 1578372457671) (:by |yeKFqj7rX)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1578372507958) (:by |yeKFqj7rX) (:text |split-path)
                                                          |T $ %{} :Expr (:at 1578371468240) (:by |yeKFqj7rX)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1578371469897) (:by |yeKFqj7rX) (:text |:path)
                                                              |j $ %{} :Leaf (:at 1578371483654) (:by |yeKFqj7rX) (:text |cursor)
                                          |n $ %{} :Expr (:at 1578372160639) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1578373062168) (:by |yeKFqj7rX) (:text |;)
                                              |T $ %{} :Leaf (:at 1578372163245) (:by |yeKFqj7rX) (:text |println)
                                              |j $ %{} :Leaf (:at 1578372164650) (:by |yeKFqj7rX) (:text "|\"result")
                                              |r $ %{} :Leaf (:at 1578372165778) (:by |yeKFqj7rX) (:text |result)
                                          |p $ %{} :Expr (:at 1578372871509) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1578373060793) (:by |yeKFqj7rX) (:text |;)
                                              |T $ %{} :Leaf (:at 1578372872269) (:by |yeKFqj7rX) (:text |println)
                                              |j $ %{} :Leaf (:at 1578372876248) (:by |yeKFqj7rX) (:text "|\"cursor")
                                              |r $ %{} :Leaf (:at 1578372878154) (:by |yeKFqj7rX) (:text |cursor)
                                          |r $ %{} :Expr (:at 1578371502047) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1578371503431) (:by |yeKFqj7rX) (:text |if)
                                              |j $ %{} :Expr (:at 1578371507100) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1578371507487) (:by |yeKFqj7rX) (:text |:matches?)
                                                  |j $ %{} :Leaf (:at 1578371508421) (:by |yeKFqj7rX) (:text |result)
                                              |r $ %{} :Expr (:at 1578372676444) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1578372679723) (:by |yeKFqj7rX) (:text |assoc)
                                                  |T $ %{} :Leaf (:at 1578372682043) (:by |yeKFqj7rX) (:text |result)
                                                  |b $ %{} :Leaf (:at 1578372687448) (:by |yeKFqj7rX) (:text |:rule)
                                                  |j $ %{} :Leaf (:at 1578372625706) (:by |yeKFqj7rX) (:text |cursor)
                                              |v $ %{} :Expr (:at 1578371511725) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1578371517515) (:by |yeKFqj7rX) (:text |recur)
                                                  |j $ %{} :Expr (:at 1578371517763) (:by |yeKFqj7rX)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1578371519151) (:by |yeKFqj7rX) (:text |rest)
                                                      |j $ %{} :Leaf (:at 1578372365336) (:by |yeKFqj7rX) (:text |xs)
                  |b $ %{} :Expr (:at 1578371968738) (:by |yeKFqj7rX)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1578373065063) (:by |yeKFqj7rX) (:text |;)
                      |T $ %{} :Leaf (:at 1578371969710) (:by |yeKFqj7rX) (:text |println)
                      |j $ %{} :Leaf (:at 1578371972549) (:by |yeKFqj7rX) (:text "|\"current rule")
                      |r $ %{} :Leaf (:at 1578373034753) (:by |yeKFqj7rX) (:text |current-match)
                  |j $ %{} :Expr (:at 1578371551734) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578371553049) (:by |yeKFqj7rX) (:text |if)
                      |j $ %{} :Expr (:at 1578371553323) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578371557557) (:by |yeKFqj7rX) (:text |nil?)
                          |j $ %{} :Leaf (:at 1578373035699) (:by |yeKFqj7rX) (:text |current-match)
                      |r $ %{} :Expr (:at 1580794955393) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1580794955782) (:by |yeKFqj7rX) (:text |{})
                          |j $ %{} :Expr (:at 1580794956313) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1580794957889) (:by |yeKFqj7rX) (:text |:ok?)
                              |j $ %{} :Leaf (:at 1580794958656) (:by |yeKFqj7rX) (:text |false)
                          |n $ %{} :Expr (:at 1580795345495) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1580795421795) (:by |yeKFqj7rX) (:text |:segments)
                              |j $ %{} :Leaf (:at 1580795392481) (:by |yeKFqj7rX) (:text |segments)
                          |r $ %{} :Expr (:at 1580794959459) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1580795302450) (:by |yeKFqj7rX) (:text |:choices)
                              |j $ %{} :Expr (:at 1673454436252) (:by |yeKFqj7rX)
                                :data $ {}
                                  |5 $ %{} :Leaf (:at 1673454437968) (:by |yeKFqj7rX) (:text |->)
                                  |D $ %{} :Leaf (:at 1673454436933) (:by |yeKFqj7rX) (:text |rules)
                                  |L $ %{} :Leaf (:at 1673454440109) (:by |yeKFqj7rX) (:text |.to-list)
                                  |T $ %{} :Expr (:at 1580795262638) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1580795263963) (:by |yeKFqj7rX) (:text |map)
                                      |b $ %{} :Expr (:at 1673373317117) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1673373317830) (:by |yeKFqj7rX) (:text |fn)
                                          |L $ %{} :Expr (:at 1673373318588) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1673373319287) (:by |yeKFqj7rX) (:text |r)
                                          |T $ %{} :Expr (:at 1673373320508) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1673373321852) (:by |yeKFqj7rX) (:text |get)
                                              |L $ %{} :Leaf (:at 1673373324468) (:by |yeKFqj7rX) (:text |r)
                                              |T $ %{} :Leaf (:at 1673373275400) (:by |yeKFqj7rX) (:text |:path)
                      |v $ %{} :Expr (:at 1578373041178) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1578373041692) (:by |yeKFqj7rX) (:text |let)
                          |L $ %{} :Expr (:at 1578373042010) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Expr (:at 1578373042222) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578373045910) (:by |yeKFqj7rX) (:text |matched-rule)
                                  |j $ %{} :Expr (:at 1578373052655) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578373052655) (:by |yeKFqj7rX) (:text |:rule)
                                      |j $ %{} :Leaf (:at 1578373052655) (:by |yeKFqj7rX) (:text |current-match)
                          |T $ %{} :Expr (:at 1578371601330) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1578371601798) (:by |yeKFqj7rX) (:text |if)
                              |L $ %{} :Expr (:at 1578371601983) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371604082) (:by |yeKFqj7rX) (:text |empty?)
                                  |j $ %{} :Expr (:at 1578372592612) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578372588934) (:by |yeKFqj7rX) (:text |:rest)
                                      |j $ %{} :Leaf (:at 1578373036917) (:by |yeKFqj7rX) (:text |current-match)
                              |P $ %{} :Expr (:at 1580794942456) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1580794943204) (:by |yeKFqj7rX) (:text |{})
                                  |L $ %{} :Expr (:at 1580794947565) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1580794949827) (:by |yeKFqj7rX) (:text |:ok?)
                                      |j $ %{} :Leaf (:at 1580794951566) (:by |yeKFqj7rX) (:text |true)
                                  |T $ %{} :Expr (:at 1580794943735) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1580794946901) (:by |yeKFqj7rX) (:text |:rule)
                                      |T $ %{} :Leaf (:at 1578373051196) (:by |yeKFqj7rX) (:text |matched-rule)
                              |T $ %{} :Expr (:at 1578371559289) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371567272) (:by |yeKFqj7rX) (:text |recur)
                                  |j $ %{} :Expr (:at 1578371569599) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578371710096) (:by |yeKFqj7rX) (:text |:rest)
                                      |j $ %{} :Leaf (:at 1578373078226) (:by |yeKFqj7rX) (:text |current-match)
                                  |r $ %{} :Expr (:at 1578371586058) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578371587801) (:by |yeKFqj7rX) (:text |:next)
                                      |j $ %{} :Leaf (:at 1578373055228) (:by |yeKFqj7rX) (:text |matched-rule)
        |letter-number-pattern $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1673284127406) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1673284127406) (:by |yeKFqj7rX) (:text |def)
              |b $ %{} :Leaf (:at 1673284127406) (:by |yeKFqj7rX) (:text |letter-number-pattern)
              |h $ %{} :Expr (:at 1673284127406) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1673284133915) (:by |yeKFqj7rX) (:text |new)
                  |L $ %{} :Leaf (:at 1673284136312) (:by |yeKFqj7rX) (:text |js/RegExp)
                  |T $ %{} :Leaf (:at 1673284131749) (:by |yeKFqj7rX) (:text "|\"\\{[\\w\\d\\-]+\\}")
        |list-paths $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1580795667444) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1580795667444) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1580795667444) (:by |yeKFqj7rX) (:text |list-paths)
              |r $ %{} :Expr (:at 1580795667444) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1580795667444) (:by |yeKFqj7rX) (:text |routes)
              |v $ %{} :Expr (:at 1580795682881) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1673283891261) (:by |yeKFqj7rX) (:text |->)
                  |j $ %{} :Leaf (:at 1580795687356) (:by |yeKFqj7rX) (:text |routes)
                  |n $ %{} :Leaf (:at 1673373380860) (:by |yeKFqj7rX) (:text |.to-list)
                  |r $ %{} :Expr (:at 1580795687716) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1580795689371) (:by |yeKFqj7rX) (:text |mapcat)
                      |j $ %{} :Expr (:at 1580795689631) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1580795689895) (:by |yeKFqj7rX) (:text |fn)
                          |j $ %{} :Expr (:at 1580795690155) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1580795697953) (:by |yeKFqj7rX) (:text |rule)
                          |r $ %{} :Expr (:at 1580795699737) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1580795717679) (:by |yeKFqj7rX) (:text |concat)
                              |j $ %{} :Expr (:at 1580795719867) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1580795720470) (:by |yeKFqj7rX) (:text |[])
                                  |T $ %{} :Expr (:at 1580795708291) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1580795709297) (:by |yeKFqj7rX) (:text |:path)
                                      |j $ %{} :Leaf (:at 1580795711316) (:by |yeKFqj7rX) (:text |rule)
                              |r $ %{} :Expr (:at 1580795781422) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1673283894334) (:by |yeKFqj7rX) (:text |->)
                                  |T $ %{} :Expr (:at 1580795722754) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1580795724491) (:by |yeKFqj7rX) (:text |list-paths)
                                      |j $ %{} :Expr (:at 1580795726482) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1580795729088) (:by |yeKFqj7rX) (:text |:next)
                                          |j $ %{} :Leaf (:at 1580795730558) (:by |yeKFqj7rX) (:text |rule)
                                  |j $ %{} :Expr (:at 1580795785214) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1580795787587) (:by |yeKFqj7rX) (:text |map)
                                      |j $ %{} :Expr (:at 1580795788254) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1580795788857) (:by |yeKFqj7rX) (:text |fn)
                                          |j $ %{} :Expr (:at 1580795789124) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1580795789471) (:by |yeKFqj7rX) (:text |x)
                                          |r $ %{} :Expr (:at 1580795790329) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1580795791148) (:by |yeKFqj7rX) (:text |str)
                                              |j $ %{} :Expr (:at 1580795792326) (:by |yeKFqj7rX)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1580795793053) (:by |yeKFqj7rX) (:text |:path)
                                                  |j $ %{} :Leaf (:at 1580795794007) (:by |yeKFqj7rX) (:text |rule)
                                              |n $ %{} :Leaf (:at 1580795802928) (:by |yeKFqj7rX) (:text "|\"/")
                                              |r $ %{} :Leaf (:at 1580795794987) (:by |yeKFqj7rX) (:text |x)
        |match-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578371634874) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578371634874) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578371634874) (:by |yeKFqj7rX) (:text |match-path)
              |r $ %{} :Expr (:at 1578371634874) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578371634874) (:by |yeKFqj7rX) (:text |segments)
                  |j $ %{} :Leaf (:at 1578371645187) (:by |yeKFqj7rX) (:text |rule-path)
              |s $ %{} :Expr (:at 1578372222472) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1578372761471) (:by |yeKFqj7rX) (:text |;)
                  |T $ %{} :Leaf (:at 1578372223359) (:by |yeKFqj7rX) (:text |println)
                  |j $ %{} :Leaf (:at 1578372226432) (:by |yeKFqj7rX) (:text "|\"matching")
                  |r $ %{} :Leaf (:at 1578372228221) (:by |yeKFqj7rX) (:text |segments)
                  |v $ %{} :Leaf (:at 1578372230301) (:by |yeKFqj7rX) (:text |rule-path)
              |t $ %{} :Expr (:at 1578371727069) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578371727540) (:by |yeKFqj7rX) (:text |if)
                  |j $ %{} :Expr (:at 1578371727717) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578371729172) (:by |yeKFqj7rX) (:text |empty?)
                      |j $ %{} :Leaf (:at 1578371922673) (:by |yeKFqj7rX) (:text |rule-path)
                  |r $ %{} :Expr (:at 1578371742953) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578371742953) (:by |yeKFqj7rX) (:text |{})
                      |j $ %{} :Expr (:at 1578371742953) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578371742953) (:by |yeKFqj7rX) (:text |:matches?)
                          |j $ %{} :Leaf (:at 1578371742953) (:by |yeKFqj7rX) (:text |true)
                      |r $ %{} :Expr (:at 1578371742953) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578371742953) (:by |yeKFqj7rX) (:text |:rest)
                          |j $ %{} :Leaf (:at 1578371749356) (:by |yeKFqj7rX) (:text |segments)
                  |v $ %{} :Expr (:at 1578371751855) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578371780321) (:by |yeKFqj7rX) (:text |cond)
                      |j $ %{} :Expr (:at 1578371780665) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1578371781334) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578371782410) (:by |yeKFqj7rX) (:text |empty?)
                              |j $ %{} :Leaf (:at 1578371784408) (:by |yeKFqj7rX) (:text |segments)
                          |j $ %{} :Expr (:at 1578371785857) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578371786204) (:by |yeKFqj7rX) (:text |{})
                              |j $ %{} :Expr (:at 1578371786425) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371788247) (:by |yeKFqj7rX) (:text |:matches)
                                  |j $ %{} :Leaf (:at 1578371789047) (:by |yeKFqj7rX) (:text |false)
                              |r $ %{} :Expr (:at 1578371789936) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371792346) (:by |yeKFqj7rX) (:text |:rest)
                                  |j $ %{} :Leaf (:at 1578371795224) (:by |yeKFqj7rX) (:text |segments)
                              |v $ %{} :Expr (:at 1578371796822) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371893195) (:by |yeKFqj7rX) (:text |:rest-rule)
                                  |j $ %{} :Leaf (:at 1578371802833) (:by |yeKFqj7rX) (:text |rule-path)
                      |r $ %{} :Expr (:at 1578371806104) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1578371809264) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578371817809) (:by |yeKFqj7rX) (:text |=)
                              |j $ %{} :Expr (:at 1578371818326) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371819052) (:by |yeKFqj7rX) (:text |first)
                                  |j $ %{} :Leaf (:at 1578371820574) (:by |yeKFqj7rX) (:text |segments)
                              |r $ %{} :Expr (:at 1578371818326) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371819052) (:by |yeKFqj7rX) (:text |first)
                                  |j $ %{} :Leaf (:at 1578371826011) (:by |yeKFqj7rX) (:text |rule-path)
                          |j $ %{} :Expr (:at 1578371829059) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578371831070) (:by |yeKFqj7rX) (:text |recur)
                              |j $ %{} :Expr (:at 1578371832530) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371834391) (:by |yeKFqj7rX) (:text |rest)
                                  |j $ %{} :Leaf (:at 1578371836884) (:by |yeKFqj7rX) (:text |segments)
                              |r $ %{} :Expr (:at 1578371838275) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371839882) (:by |yeKFqj7rX) (:text |rest)
                                  |j $ %{} :Leaf (:at 1578371841710) (:by |yeKFqj7rX) (:text |rule-path)
                      |v $ %{} :Expr (:at 1578371806104) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Expr (:at 1596794392498) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1596794393852) (:by |yeKFqj7rX) (:text |or)
                              |T $ %{} :Expr (:at 1578371809264) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1673283548329) (:by |yeKFqj7rX) (:text |.starts-with?)
                                  |r $ %{} :Expr (:at 1578371818326) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578371819052) (:by |yeKFqj7rX) (:text |first)
                                      |j $ %{} :Leaf (:at 1578371826011) (:by |yeKFqj7rX) (:text |rule-path)
                                  |v $ %{} :Leaf (:at 1578371856393) (:by |yeKFqj7rX) (:text "|\":")
                              |j $ %{} :Expr (:at 1596794394800) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1673284116463) (:by |yeKFqj7rX) (:text |.!test)
                                  |f $ %{} :Leaf (:at 1673284127052) (:by |yeKFqj7rX) (:text |letter-number-pattern)
                                  |r $ %{} :Expr (:at 1596794435932) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1596794435932) (:by |yeKFqj7rX) (:text |first)
                                      |j $ %{} :Leaf (:at 1596794435932) (:by |yeKFqj7rX) (:text |rule-path)
                          |j $ %{} :Expr (:at 1578371829059) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578371831070) (:by |yeKFqj7rX) (:text |recur)
                              |j $ %{} :Expr (:at 1578371832530) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371834391) (:by |yeKFqj7rX) (:text |rest)
                                  |j $ %{} :Leaf (:at 1578371836884) (:by |yeKFqj7rX) (:text |segments)
                              |r $ %{} :Expr (:at 1578371838275) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371839882) (:by |yeKFqj7rX) (:text |rest)
                                  |j $ %{} :Leaf (:at 1578371841710) (:by |yeKFqj7rX) (:text |rule-path)
                      |x $ %{} :Expr (:at 1578371862564) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1673283543463) (:by |yeKFqj7rX) (:text |true)
                          |j $ %{} :Expr (:at 1578371867426) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578371867810) (:by |yeKFqj7rX) (:text |{})
                              |j $ %{} :Expr (:at 1578371868022) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371871313) (:by |yeKFqj7rX) (:text |:matches?)
                                  |j $ %{} :Leaf (:at 1578371873031) (:by |yeKFqj7rX) (:text |false)
                              |r $ %{} :Expr (:at 1578371874427) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371875236) (:by |yeKFqj7rX) (:text |:rest)
                                  |j $ %{} :Leaf (:at 1578371876985) (:by |yeKFqj7rX) (:text |segments)
                              |v $ %{} :Expr (:at 1578371879204) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578371888129) (:by |yeKFqj7rX) (:text |:rest-rule)
                                  |j $ %{} :Leaf (:at 1578371891466) (:by |yeKFqj7rX) (:text |rule-path)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1580789110559) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1580789110559) (:by |yeKFqj7rX) (:text |ns)
            |j $ %{} :Leaf (:at 1580789110559) (:by |yeKFqj7rX) (:text |app.path)
            |r $ %{} :Expr (:at 1580789128702) (:by |yeKFqj7rX)
              :data $ {}
                |T $ %{} :Leaf (:at 1580789130327) (:by |yeKFqj7rX) (:text |:require)
                |r $ %{} :Expr (:at 1580789169435) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580789171607) (:by |yeKFqj7rX) (:text |app.util)
                    |r $ %{} :Leaf (:at 1580789173383) (:by |yeKFqj7rX) (:text |:refer)
                    |x $ %{} :Expr (:at 1580789174342) (:by |yeKFqj7rX)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580789175255) (:by |yeKFqj7rX) (:text |split-path)
    |app.router $ %{} :FileEntry
      :defs $ {}
        |lilac-method+ $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |deflilac)
              |j $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-method+)
              |r $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                :data $ {}
              |v $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |optional+)
                  |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1581915607401) (:by |yeKFqj7rX) (:text |record+)
                      |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |{})
                          |b $ %{} :Expr (:at 1579851668726) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851670233) (:by |yeKFqj7rX) (:text |:code)
                              |j $ %{} :Expr (:at 1579851671433) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1579851674081) (:by |yeKFqj7rX) (:text |optional+)
                                  |j $ %{} :Expr (:at 1579851677462) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1579851679254) (:by |yeKFqj7rX) (:text |number+)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:type)
                              |j $ %{} :Expr (:at 1706099872055) (:by |yeKFqj7rX)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1706099874237) (:by |yeKFqj7rX) (:text |or+)
                                  |T $ %{} :Expr (:at 1706099881459) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1706099883144) (:by |yeKFqj7rX) (:text |[])
                                      |T $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |is+)
                                          |j $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:file)
                                      |b $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |is+)
                                          |j $ %{} :Leaf (:at 1706099887931) (:by |yeKFqj7rX) (:text "|\"file")
                          |r $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:file)
                              |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |string+)
                          |v $ %{} :Expr (:at 1583725194617) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1583725195524) (:by |yeKFqj7rX) (:text |:delay)
                              |j $ %{} :Expr (:at 1583725196465) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1583725199384) (:by |yeKFqj7rX) (:text |optional+)
                                  |j $ %{} :Expr (:at 1583725200992) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1583725202063) (:by |yeKFqj7rX) (:text |number+)
                      |r $ %{} :Expr (:at 1579874434536) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579874434975) (:by |yeKFqj7rX) (:text |{})
                          |j $ %{} :Expr (:at 1579874435423) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1581915612935) (:by |yeKFqj7rX) (:text |:check-keys?)
                              |j $ %{} :Leaf (:at 1581915614172) (:by |yeKFqj7rX) (:text |true)
        |lilac-router+ $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |deflilac)
              |j $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-router+)
              |r $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                :data $ {}
              |v $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1581915531429) (:by |yeKFqj7rX) (:text |record+)
                  |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |{})
                      |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:port)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |number+)
                      |n $ %{} :Expr (:at 1585020715188) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1585021009116) (:by |yeKFqj7rX) (:text |:fallback-host)
                          |j $ %{} :Expr (:at 1585020731306) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1585020735461) (:by |yeKFqj7rX) (:text |optional+)
                              |T $ %{} :Expr (:at 1585020729338) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1585020730581) (:by |yeKFqj7rX) (:text |string+)
                      |r $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1581915860384) (:by |yeKFqj7rX) (:text |:routes)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1673283500001) (:by |yeKFqj7rX) (:text |list+)
                              |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-router-path+)
                  |r $ %{} :Expr (:at 1579874394592) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1579874395514) (:by |yeKFqj7rX) (:text |{})
                      |j $ %{} :Expr (:at 1579874396171) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1585020719447) (:by |yeKFqj7rX) (:text |:check-keys?)
                          |j $ %{} :Leaf (:at 1581915543541) (:by |yeKFqj7rX) (:text |true)
        |lilac-router-path+ $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |deflilac)
              |j $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-router-path+)
              |r $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                :data $ {}
              |v $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1581915598909) (:by |yeKFqj7rX) (:text |record+)
                  |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |{})
                      |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:path)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |string+)
                      |r $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:get)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-method+)
                      |v $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:post)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-method+)
                      |x $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:put)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-method+)
                      |y $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:delete)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-method+)
                      |yT $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:next)
                          |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |optional+)
                              |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1673283671600) (:by |yeKFqj7rX) (:text |list+)
                                  |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac-router-path+)
                  |r $ %{} :Expr (:at 1579874411794) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1579874413193) (:by |yeKFqj7rX) (:text |{})
                      |j $ %{} :Expr (:at 1579874413444) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1581915576037) (:by |yeKFqj7rX) (:text |:check-keys?)
                          |j $ %{} :Leaf (:at 1581915578778) (:by |yeKFqj7rX) (:text |true)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |ns)
            |j $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |app.router)
            |r $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
              :data $ {}
                |T $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:require)
                |j $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |lilac.core)
                    |r $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |:refer)
                    |v $ %{} :Expr (:at 1579851448885) (:by |yeKFqj7rX)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |validate-lilac)
                        |r $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |number+)
                        |v $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |string+)
                        |x $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |keyword+)
                        |y $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |boolean+)
                        |yT $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |nil+)
                        |yr $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |list+)
                        |yv $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |map+)
                        |yx $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |set+)
                        |yy $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |deflilac)
                        |yyT $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |or+)
                        |yyj $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |and+)
                        |yyr $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |not+)
                        |yyv $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |custom+)
                        |yyx $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |is+)
                        |yyy $ %{} :Leaf (:at 1579851448885) (:by |yeKFqj7rX) (:text |optional+)
                        |yyyT $ %{} :Leaf (:at 1581915526972) (:by |yeKFqj7rX) (:text |record+)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |html-header $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578472231759) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578472236146) (:by |yeKFqj7rX) (:text |def)
              |j $ %{} :Leaf (:at 1578472231759) (:by |yeKFqj7rX) (:text |html-header)
              |r $ %{} :Expr (:at 1578472236815) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578472236815) (:by |yeKFqj7rX) (:text |{})
                  |j $ %{} :Expr (:at 1578472236815) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578472236815) (:by |yeKFqj7rX) (:text |:Content-Type)
                      |j $ %{} :Leaf (:at 1578472239996) (:by |yeKFqj7rX) (:text "|\"text/html")
        |json-header $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578472219243) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578472219243) (:by |yeKFqj7rX) (:text |def)
              |j $ %{} :Leaf (:at 1578472219243) (:by |yeKFqj7rX) (:text |json-header)
              |r $ %{} :Expr (:at 1578472220327) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578472220327) (:by |yeKFqj7rX) (:text |{})
                  |j $ %{} :Expr (:at 1578472220327) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578472220327) (:by |yeKFqj7rX) (:text |:Content-Type)
                      |j $ %{} :Leaf (:at 1578472220327) (:by |yeKFqj7rX) (:text "|\"application/json")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1580789032030) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1580789032030) (:by |yeKFqj7rX) (:text |ns)
            |j $ %{} :Leaf (:at 1580789032030) (:by |yeKFqj7rX) (:text |app.schema)
    |app.util $ %{} :FileEntry
      :defs $ {}
        |check-version! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578543738168) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578543738168) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578543738168) (:by |yeKFqj7rX) (:text |check-version!)
              |r $ %{} :Expr (:at 1578543738168) (:by |yeKFqj7rX)
                :data $ {}
              |t $ %{} :Expr (:at 1673283842997) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1673283845210) (:by |yeKFqj7rX) (:text |hint-fn)
                  |b $ %{} :Leaf (:at 1673283851433) (:by |yeKFqj7rX) (:text |async)
              |v $ %{} :Expr (:at 1578543738168) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1596166254866) (:by |yeKFqj7rX) (:text |let)
                  |j $ %{} :Expr (:at 1596166256335) (:by |yeKFqj7rX)
                    :data $ {}
                      |D $ %{} :Expr (:at 1596166330950) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1596166330950) (:by |yeKFqj7rX) (:text |pkg)
                          |j $ %{} :Expr (:at 1596166330950) (:by |yeKFqj7rX)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1673283858325) (:by |yeKFqj7rX) (:text |js/JSON.parse)
                              |r $ %{} :Expr (:at 1596166330950) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1596166330950) (:by |yeKFqj7rX) (:text |fs/readFileSync)
                                  |j $ %{} :Expr (:at 1596166330950) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1596166330950) (:by |yeKFqj7rX) (:text |path/join)
                                      |j $ %{} :Expr (:at 1673284444296) (:by |yeKFqj7rX)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1673284444296) (:by |yeKFqj7rX) (:text |dirname)
                                          |b $ %{} :Expr (:at 1673284444296) (:by |yeKFqj7rX)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1673284444296) (:by |yeKFqj7rX) (:text |fileURLToPath)
                                              |b $ %{} :Leaf (:at 1673284450363) (:by |yeKFqj7rX) (:text |js/import.meta.url)
                                      |r $ %{} :Leaf (:at 1596166330950) (:by |yeKFqj7rX) (:text "|\"../package.json")
                      |L $ %{} :Expr (:at 1596166330950) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1596166330950) (:by |yeKFqj7rX) (:text |version)
                          |j $ %{} :Expr (:at 1596166330950) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1596166330950) (:by |yeKFqj7rX) (:text |.-version)
                              |j $ %{} :Leaf (:at 1596166330950) (:by |yeKFqj7rX) (:text |pkg)
                      |T $ %{} :Expr (:at 1596166262367) (:by |yeKFqj7rX)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1596166265587) (:by |yeKFqj7rX) (:text |npm-version)
                          |T $ %{} :Expr (:at 1596166256489) (:by |yeKFqj7rX)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1673283867973) (:by |yeKFqj7rX) (:text |js-await)
                              |T $ %{} :Expr (:at 1578543738168) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1578543738168) (:by |yeKFqj7rX) (:text |latest-version)
                                  |j $ %{} :Expr (:at 1578543738168) (:by |yeKFqj7rX)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1578543738168) (:by |yeKFqj7rX) (:text |.-name)
                                      |j $ %{} :Leaf (:at 1578543738168) (:by |yeKFqj7rX) (:text |pkg)
                  |r $ %{} :Expr (:at 1596166268204) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text |if)
                      |j $ %{} :Expr (:at 1596166268204) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text |=)
                          |j $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text |npm-version)
                          |r $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text |version)
                      |r $ %{} :Expr (:at 1596166268204) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text |println)
                          |j $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text "|\"Running latest version")
                          |r $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text |version)
                      |v $ %{} :Expr (:at 1596166268204) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text |println)
                          |j $ %{} :Expr (:at 1596166268204) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1673283870255) (:by |yeKFqj7rX) (:text |.!yellow)
                              |j $ %{} :Leaf (:at 1596166268204) (:by |yeKFqj7rX) (:text |chalk)
                              |r $ %{} :Expr (:at 1596166268204) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1673283986947) (:by |yeKFqj7rX) (:text |str)
                                  |j $ %{} :Leaf (:at 1673284055610) (:by |yeKFqj7rX) (:text "|\"New version ")
                                  |j5 $ %{} :Leaf (:at 1673284056260) (:by |yeKFqj7rX) (:text |npm-version)
                                  |jD $ %{} :Leaf (:at 1673284050226) (:by |yeKFqj7rX) (:text "|\" available, current one is ")
                                  |jT $ %{} :Leaf (:at 1673284044938) (:by |yeKFqj7rX) (:text |version)
                                  |k $ %{} :Leaf (:at 1673284040623) (:by |yeKFqj7rX) (:text "|\" ")
                                  |l $ %{} :Leaf (:at 1673284024574) (:by |yeKFqj7rX) (:text "|\". Please upgrade!\nyarn global add @jimengio/serve-json\n\n")
                                  |n $ %{} :Leaf (:at 1673283989450) (:by |yeKFqj7rX) (:text |)
        |delay! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1583725391956) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1583725391956) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1583725391956) (:by |yeKFqj7rX) (:text |delay!)
              |r $ %{} :Expr (:at 1583725391956) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1583725402761) (:by |yeKFqj7rX) (:text |t)
                  |j $ %{} :Leaf (:at 1583725403496) (:by |yeKFqj7rX) (:text |f)
              |v $ %{} :Expr (:at 1583725404158) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1583725502151) (:by |yeKFqj7rX) (:text |js/setTimeout)
                  |j $ %{} :Leaf (:at 1583725405670) (:by |yeKFqj7rX) (:text |f)
                  |r $ %{} :Leaf (:at 1583725406488) (:by |yeKFqj7rX) (:text |t)
        |file? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578659633423) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578659647232) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578659633423) (:by |yeKFqj7rX) (:text |file?)
              |r $ %{} :Expr (:at 1578659633423) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578659634811) (:by |yeKFqj7rX) (:text |x)
              |v $ %{} :Expr (:at 1578659640943) (:by |yeKFqj7rX)
                :data $ {}
                  |D $ %{} :Leaf (:at 1578659641572) (:by |yeKFqj7rX) (:text |or)
                  |T $ %{} :Expr (:at 1578659636322) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578659637567) (:by |yeKFqj7rX) (:text |=)
                      |j $ %{} :Leaf (:at 1578659639962) (:by |yeKFqj7rX) (:text |:file)
                      |r $ %{} :Leaf (:at 1578659640546) (:by |yeKFqj7rX) (:text |x)
                  |j $ %{} :Expr (:at 1578659636322) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578659637567) (:by |yeKFqj7rX) (:text |=)
                      |j $ %{} :Leaf (:at 1578659645415) (:by |yeKFqj7rX) (:text "|\"file")
                      |r $ %{} :Leaf (:at 1578659640546) (:by |yeKFqj7rX) (:text |x)
        |split-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1578372496161) (:by |yeKFqj7rX)
            :data $ {}
              |T $ %{} :Leaf (:at 1578372497509) (:by |yeKFqj7rX) (:text |defn)
              |j $ %{} :Leaf (:at 1578372496161) (:by |yeKFqj7rX) (:text |split-path)
              |r $ %{} :Expr (:at 1578372496161) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1578372499473) (:by |yeKFqj7rX) (:text |x)
              |v $ %{} :Expr (:at 1578372500324) (:by |yeKFqj7rX)
                :data $ {}
                  |T $ %{} :Leaf (:at 1673283524774) (:by |yeKFqj7rX) (:text |->)
                  |j $ %{} :Expr (:at 1578372500324) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1673283526548) (:by |yeKFqj7rX) (:text |.split)
                      |f $ %{} :Leaf (:at 1578372502285) (:by |yeKFqj7rX) (:text |x)
                      |r $ %{} :Leaf (:at 1578372500324) (:by |yeKFqj7rX) (:text "|\"/")
                  |r $ %{} :Expr (:at 1578372500324) (:by |yeKFqj7rX)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1578372500324) (:by |yeKFqj7rX) (:text |filter)
                      |j $ %{} :Expr (:at 1578372500324) (:by |yeKFqj7rX)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1578372500324) (:by |yeKFqj7rX) (:text |fn)
                          |j $ %{} :Expr (:at 1578372500324) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578372500324) (:by |yeKFqj7rX) (:text |x)
                          |r $ %{} :Expr (:at 1578372500324) (:by |yeKFqj7rX)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1578372500324) (:by |yeKFqj7rX) (:text |not)
                              |j $ %{} :Expr (:at 1578372500324) (:by |yeKFqj7rX)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1673283531435) (:by |yeKFqj7rX) (:text |.blank?)
                                  |j $ %{} :Leaf (:at 1578372500324) (:by |yeKFqj7rX) (:text |x)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1580788767835) (:by |yeKFqj7rX)
          :data $ {}
            |T $ %{} :Leaf (:at 1580788767835) (:by |yeKFqj7rX) (:text |ns)
            |j $ %{} :Leaf (:at 1580788767835) (:by |yeKFqj7rX) (:text |app.util)
            |n $ %{} :Expr (:at 1580788879091) (:by |yeKFqj7rX)
              :data $ {}
                |D $ %{} :Leaf (:at 1580788880215) (:by |yeKFqj7rX) (:text |:require)
                |L $ %{} :Expr (:at 1580788918223) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580788918223) (:by |yeKFqj7rX) (:text "|\"fs")
                    |r $ %{} :Leaf (:at 1580788918223) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1580788918223) (:by |yeKFqj7rX) (:text |fs)
                |T $ %{} :Expr (:at 1580788878748) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580788878748) (:by |yeKFqj7rX) (:text "|\"chalk")
                    |r $ %{} :Leaf (:at 1673283970140) (:by |yeKFqj7rX) (:text |:default)
                    |v $ %{} :Leaf (:at 1580788878748) (:by |yeKFqj7rX) (:text |chalk)
                |j $ %{} :Expr (:at 1580788892949) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580788892949) (:by |yeKFqj7rX) (:text "|\"latest-version")
                    |r $ %{} :Leaf (:at 1673283978694) (:by |yeKFqj7rX) (:text |:default)
                    |v $ %{} :Leaf (:at 1580788892949) (:by |yeKFqj7rX) (:text |latest-version)
                |r $ %{} :Expr (:at 1580788905867) (:by |yeKFqj7rX)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1580788905867) (:by |yeKFqj7rX) (:text "|\"path")
                    |r $ %{} :Leaf (:at 1580788905867) (:by |yeKFqj7rX) (:text |:as)
                    |v $ %{} :Leaf (:at 1580788905867) (:by |yeKFqj7rX) (:text |path)
                |t $ %{} :Expr (:at 1673284410416) (:by |yeKFqj7rX)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1673284415926) (:by |yeKFqj7rX) (:text "|\"path")
                    |b $ %{} :Leaf (:at 1673284417812) (:by |yeKFqj7rX) (:text |:refer)
                    |h $ %{} :Expr (:at 1673284418050) (:by |yeKFqj7rX)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1673284418342) (:by |yeKFqj7rX) (:text |dirname)
                |u $ %{} :Expr (:at 1673284422291) (:by |yeKFqj7rX)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1673284423574) (:by |yeKFqj7rX) (:text "|\"url")
                    |b $ %{} :Leaf (:at 1673284424501) (:by |yeKFqj7rX) (:text |:refer)
                    |h $ %{} :Expr (:at 1673284424719) (:by |yeKFqj7rX)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1673284425379) (:by |yeKFqj7rX) (:text |fileURLToPath)
  :users $ {}
    |yeKFqj7rX $ {} (:avatar nil) (:id |yeKFqj7rX) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
