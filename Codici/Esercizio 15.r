library(MASS)

white <- 10
red <- 4
green <- 7

total <- green + red + white
pr_total <- choose(total, 3)

# Richiesta 1: tre rosse

trerosse <- fractions(choose(red, 3)/pr_total)
print(trerosse)

# Richiesta 2: tre bianche

trebianche <- fractions(choose(white, 3)/pr_total)
print(trebianche)

# Richiesta 3: 2 rosse e 1 bianca

duerosseunabianca <- fractions((choose(red, 2)*choose(white, 1))/pr_total)
print(duerosseunabianca)

# Richiesta 4: almeno una sia bianca

almenounabianca <- fractions(1 - choose(red+green, 3)/pr_total)
print(almenounabianca)

# Richiesta 5: tutte di colori diversi

trecolori <- fractions((red*green*white)/pr_total)
print(trecolori)

# Richiesta 6: ordine rosso, bianco, verde

final <- fractions(red/total * white/(total-1) * green/(total-2))
print(final)

