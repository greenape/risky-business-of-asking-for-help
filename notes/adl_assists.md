ELSA ADL vars -> headb01 to headb14

Pos. = 826	Variable = headldr	Variable label = ADL: difficulty dressing, including putting on shoes and socks
	Value label information for headldr
	Value = 0.0	Label = Not mentioned
	Value = 1.0	Label = Mentioned
	Value = -1.0	Label = Item not applicable
	Value = -9.0	Label = Refusal
	Value = -8.0	Label = Don't Know
	Value = -2.0	Label = Schedule not applicable

Pos. = 827	Variable = headlwa	Variable label = ADL: difficulty walking across a room
	Value label information for headlwa
	Value = 0.0	Label = Not mentioned
	Value = 1.0	Label = Mentioned
	Value = -1.0	Label = Item not applicable
	Value = -9.0	Label = Refusal
	Value = -8.0	Label = Don't Know
	Value = -2.0	Label = Schedule not applicable

Pos. = 828	Variable = headlba	Variable label = ADL: difficulty bathing or showering
	Value label information for headlba
	Value = 0.0	Label = Not mentioned
	Value = 1.0	Label = Mentioned
	Value = -1.0	Label = Item not applicable
	Value = -9.0	Label = Refusal
	Value = -8.0	Label = Don't Know
	Value = -2.0	Label = Schedule not applicable

Pos. = 829	Variable = headlea	Variable label = ADL: difficulty eating, such as cutting up food
	Value label information for headlea
	Value = 0.0	Label = Not mentioned
	Value = 1.0	Label = Mentioned
	Value = -1.0	Label = Item not applicable
	Value = -9.0	Label = Refusal
	Value = -8.0	Label = Don't Know
	Value = -2.0	Label = Schedule not applicable

Pos. = 830	Variable = headlbe	Variable label = ADL: difficulty getting in and out of bed
	Value label information for headlbe
	Value = 0.0	Label = Not mentioned
	Value = 1.0	Label = Mentioned
	Value = -1.0	Label = Item not applicable
	Value = -9.0	Label = Refusal
	Value = -8.0	Label = Don't Know
	Value = -2.0	Label = Schedule not applicable

Pos. = 831	Variable = headlwc	Variable label = ADL: difficulty using the toilet, including getting up or down
	Value label information for headlwc
	Value = 0.0	Label = Not mentioned
	Value = 1.0	Label = Mentioned
	Value = -1.0	Label = Item not applicable
	Value = -9.0	Label = Refusal
	Value = -8.0	Label = Don't Know
	Value = -2.0	Label = Schedule not applicable

subset(elsa.4.svy.65plus, headlwc != "Mentioned" & headlbe != "Mentioned" & headlea != "Mentioned" & headlwa != "Mentioned" & headlma != "Mentioned" & headlpr != "Mentioned" & headlsh != "Mentioned" & headlte != "Mentioned" & headlme != "Mentioned" & headlho != "Mentioned" & headlmo != "Mentioned" & hemobpi != "Mentioned" & hemobli != "Mentioned" & "hemobpu" != "Mentioned" & "hemobre" != "Mentioned" & hemobst != "Mentioned" & hemobcl != "Mentioned" & hemobcs != "Mentioned" & hemobch != "Mentioned" & hemobsi != "Mentioned" & hemobwa != "Mentioned")

HeHpa <- gets help (measure in the CLC paper is hehpw96)

unique id -> idauniq

Pos. = 5742	Variable = w5lwgt	Variable label = Wave 5 longitudinal weight
	Value label information for w5lwgt

Pos. = 5743	Variable = w5xwgt	Variable label = w5 cross-sectional weight
	Value label information for w5xwgt

Age -> indager


svytable(~headldr+headlba, design=elsa.3.svy.65plus, Ntotal=100)
                         headlba
headldr                       Refusal  Don't know Schedule not applicable
  Refusal                  0.00000000  0.00000000              0.00000000
  Don't know               0.00000000  0.00000000              0.00000000
  Schedule not applicable  0.00000000  0.00000000              0.00000000
  Not applicable           0.00000000  0.00000000              0.00000000
  Not mentioned            0.00000000  0.00000000              0.00000000
  Mentioned                0.00000000  0.00000000              0.00000000
                         headlba
headldr                   Not applicable Not mentioned   Mentioned
  Refusal                     0.00000000    0.00000000  0.00000000
  Don't know                  0.00000000    0.00000000  0.00000000
  Schedule not applicable     0.00000000    0.00000000  0.00000000
  Not applicable              0.06334578    0.00000000  0.00000000
  Not mentioned               0.00000000   74.94311559  8.06641454
  Mentioned                   0.00000000    7.65058533  9.27653877


svyby(~hehpw96, ~headlba+headldr, elsa.3.svy.65plus, svymean)
                                     headlba        headldr hehpw96Refusal
Not applicable.Not applicable Not applicable Not applicable              0
Not mentioned.Not mentioned    Not mentioned  Not mentioned              0
Mentioned.Not mentioned            Mentioned  Not mentioned              0
Not mentioned.Mentioned        Not mentioned      Mentioned              0
Mentioned.Mentioned                Mentioned      Mentioned              0
                              hehpw96Don't know hehpw96Schedule not applicable
Not applicable.Not applicable                 0                              0
Not mentioned.Not mentioned                   0                              0
Mentioned.Not mentioned                       0                              0
Not mentioned.Mentioned                       0                              0
Mentioned.Mentioned                           0                              0
                              hehpw96Not applicable hehpw96Not mentioned
Not applicable.Not applicable             1.0000000            0.0000000
Not mentioned.Not mentioned               1.0000000            0.0000000
Mentioned.Not mentioned                   0.3616194            0.4147763
Not mentioned.Mentioned                   0.4432076            0.3330264
Mentioned.Mentioned                       0.2760258            0.5415765
                              hehpw96Mentioned se.hehpw96Refusal
Not applicable.Not applicable        0.0000000                 0
Not mentioned.Not mentioned          0.0000000                 0
Mentioned.Not mentioned              0.2236044                 0
Not mentioned.Mentioned              0.2237660                 0
Mentioned.Mentioned                  0.1823977                 0
                              se.hehpw96Don't know
Not applicable.Not applicable                    0
Not mentioned.Not mentioned                      0
Mentioned.Not mentioned                          0
Not mentioned.Mentioned                          0
Mentioned.Mentioned                              0
                              se.hehpw96Schedule not applicable
Not applicable.Not applicable                                 0
Not mentioned.Not mentioned                                   0
Mentioned.Not mentioned                                       0
Not mentioned.Mentioned                                       0
Mentioned.Mentioned                                           0
                              se.hehpw96Not applicable se.hehpw96Not mentioned
Not applicable.Not applicable               0.00000000              0.00000000
Not mentioned.Not mentioned                 0.00000000              0.00000000
Mentioned.Not mentioned                     0.02673877              0.02806540
Not mentioned.Mentioned                     0.02795034              0.02704014
Mentioned.Mentioned                         0.02403616              0.02656864
                              se.hehpw96Mentioned
Not applicable.Not applicable          0.00000000
Not mentioned.Not mentioned            0.00000000
Mentioned.Not mentioned                0.02312042
Not mentioned.Mentioned                0.02315379
Mentioned.Mentioned                    0.02006527

==========

elsa.4.svy <- svydesign(~idauniq, data=elsa.4, weights=~w4xwgt)
elsa.4.svy.65plus <- subset(elsa.4.svy, indager > 64)

  svytable(~headldr+headlba, design=elsa.4.svy.65plus, Ntotal=100)
                         headlba
headldr                     Refusal Don't Know Schedule not applicable
  Refusal                  0.000000   0.000000                0.000000
  Don't Know               0.000000   0.000000                0.000000
  Schedule not applicable  0.000000   0.000000                0.000000
  Item not applicable      0.000000   0.000000                0.000000
  Not mentioned            0.000000   0.000000                0.000000
  Mentioned                0.000000   0.000000                0.000000
                         headlba
headldr                   Item not applicable Not mentioned Mentioned
  Refusal                            0.000000      0.000000  0.000000
  Don't Know                         0.000000      0.000000  0.000000
  Schedule not applicable            0.000000      0.000000  0.000000
  Item not applicable                0.000000      0.000000  0.000000
  Not mentioned                      0.000000     74.825970  6.449694
  Mentioned                          0.000000      9.687078  9.037259

svyby(~hehpw96, ~headlba+headldr, elsa.4.svy.65plus, svymean)
                                  headlba       headldr hehpw96Refusal
Not mentioned.Not mentioned Not mentioned Not mentioned              0
Mentioned.Not mentioned         Mentioned Not mentioned              0
Not mentioned.Mentioned     Not mentioned     Mentioned              0
Mentioned.Mentioned             Mentioned     Mentioned              0
                            hehpw96Don't Know hehpw96Schedule not applicable
Not mentioned.Not mentioned                 0                              0
Mentioned.Not mentioned                     0                              0
Not mentioned.Mentioned                     0                              0
Mentioned.Mentioned                         0                              0
                            hehpw96Item not applicable hehpw96Not mentioned
Not mentioned.Not mentioned                  1.0000000            0.0000000
Mentioned.Not mentioned                      0.3315813            0.3863142
Not mentioned.Mentioned                      0.4350211            0.3398669
Mentioned.Mentioned                          0.1600671            0.6838763
                            hehpw96Mentioned se.hehpw96Refusal
Not mentioned.Not mentioned        0.0000000                 0
Mentioned.Not mentioned            0.2821045                 0
Not mentioned.Mentioned            0.2251121                 0
Mentioned.Mentioned                0.1560566                 0
                            se.hehpw96Don't Know
Not mentioned.Not mentioned                    0
Mentioned.Not mentioned                        0
Not mentioned.Mentioned                        0
Mentioned.Mentioned                            0
                            se.hehpw96Schedule not applicable
Not mentioned.Not mentioned                                 0
Mentioned.Not mentioned                                     0
Not mentioned.Mentioned                                     0
Mentioned.Mentioned                                         0
                            se.hehpw96Item not applicable
Not mentioned.Not mentioned                    0.00000000
Mentioned.Not mentioned                        0.02968640
Not mentioned.Mentioned                        0.02439695
Mentioned.Mentioned                            0.01860068
                            se.hehpw96Not mentioned se.hehpw96Mentioned
Not mentioned.Not mentioned              0.00000000          0.00000000
Mentioned.Not mentioned                  0.03086293          0.02749310
Not mentioned.Mentioned                  0.02396773          0.02064978
Mentioned.Mentioned                      0.02420030          0.01913885

=========

svytable(~headldr+headlba, design=elsa.5.svy.65plus, Ntotal=100)
                         headlba
headldr                       refusal  don't know schedule not applicable
  refusal                  0.01949224  0.00000000              0.00000000
  don't know               0.00000000  0.01797377              0.00000000
  schedule not applicable  0.00000000  0.00000000              0.00000000
  item not applicable      0.00000000  0.00000000              0.00000000
  not mentioned            0.00000000  0.00000000              0.00000000
  mentioned                0.00000000  0.00000000              0.00000000
                         headlba
headldr                   item not applicable not mentioned   mentioned
  refusal                          0.00000000    0.00000000  0.00000000
  don't know                       0.00000000    0.00000000  0.00000000
  schedule not applicable          0.00000000    0.00000000  0.00000000
  item not applicable              0.00000000    0.00000000  0.00000000
  not mentioned                    0.00000000   77.52606328  5.12466185
  mentioned                        0.00000000    9.14140800  8.17040086


 svyby(~hehpw96, ~headlba+headldr, elsa.5.svy.65plus, svymean)
                                  headlba       headldr hehpw96refusal
refusal.refusal                   refusal       refusal              0
don't know.don't know          don't know    don't know              0
not mentioned.not mentioned not mentioned not mentioned              0
mentioned.not mentioned         mentioned not mentioned              0
not mentioned.mentioned     not mentioned     mentioned              0
mentioned.mentioned             mentioned     mentioned              0
                            hehpw96don't know hehpw96schedule not applicable
refusal.refusal                             0                              0
don't know.don't know                       0                              0
not mentioned.not mentioned                 0                              0
mentioned.not mentioned                     0                              0
not mentioned.mentioned                     0                              0
mentioned.mentioned                         0                              0
                            hehpw96item not applicable hehpw96not mentioned
refusal.refusal                              1.0000000            0.0000000
don't know.don't know                        1.0000000            0.0000000
not mentioned.not mentioned                  1.0000000            0.0000000
mentioned.not mentioned                      0.3662675            0.4040965
not mentioned.mentioned                      0.4741624            0.2896721
mentioned.mentioned                          0.1473326            0.6573260
                            hehpw96mentioned se.hehpw96refusal
refusal.refusal                    0.0000000                 0
don't know.don't know              0.0000000                 0
not mentioned.not mentioned        0.0000000                 0
mentioned.not mentioned            0.2296360                 0
not mentioned.mentioned            0.2361655                 0
mentioned.mentioned                0.1953414                 0
                            se.hehpw96don't know
refusal.refusal                                0
don't know.don't know                          0
not mentioned.not mentioned                    0
mentioned.not mentioned                        0
not mentioned.mentioned                        0
mentioned.mentioned                            0
                            se.hehpw96schedule not applicable
refusal.refusal                                             0
don't know.don't know                                       0
not mentioned.not mentioned                                 0
mentioned.not mentioned                                     0
not mentioned.mentioned                                     0
mentioned.mentioned                                         0
                            se.hehpw96item not applicable
refusal.refusal                                0.00000000
don't know.don't know                          0.00000000
not mentioned.not mentioned                    0.00000000
mentioned.not mentioned                        0.03305967
not mentioned.mentioned                        0.02516599
mentioned.mentioned                            0.01922786
                            se.hehpw96not mentioned se.hehpw96mentioned
refusal.refusal                          0.00000000          0.00000000
don't know.don't know                    0.00000000          0.00000000
not mentioned.not mentioned              0.00000000          0.00000000
mentioned.not mentioned                  0.03316868          0.02799283
not mentioned.mentioned                  0.02289308          0.02132628
mentioned.mentioned                      0.02555958          0.02099084