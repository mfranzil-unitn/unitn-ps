library(MASS)

donne <- 8
uomini <- 10

donne_elette <- 2
uomini_eletti <- 2

domanda_2 <- 3
domanda_3 <- 3
domanda_4_uomini <- 1
domanda_4_donne <- 1

print(fractions(choose(donne,donne_elette)*choose(uomini, uomini_eletti)))
print(fractions(choose(donne,donne_elette)*(choose(uomini-domanda_2,uomini_eletti)
               +domanda_2*choose(uomini-domanda_2,uomini_eletti-1))))
print(fractions(choose(uomini,uomini_eletti)*(choose(donne-domanda_3,donne_elette)
               +domanda_3*choose(donne-domanda_3,donne_elette-1))))
print(fractions(choose(uomini-domanda_4_uomini,uomini_eletti)*choose(donne-domanda_4_donne,donne_elette)
               +choose(uomini-domanda_4_uomini,uomini_eletti)*choose(donne-domanda_4_donne,donne_elette-domanda_4_donne)
               +choose(uomini-domanda_4_uomini,uomini_eletti-domanda_4_uomini)*choose(donne-domanda_4_donne,donne_elette)))