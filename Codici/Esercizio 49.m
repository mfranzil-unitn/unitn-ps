# Visita https://octave-online.net/
# Metti a posto i dati in questo script
# Copia-incolla tutto il contenuto del file su quel sito e premi invio
# Se compare vicino al contdown in basso "Aggiungi 15 secondi" premilo


## DATI

coeff = 3
domanda2 = 0.75


## SVOLGIMENTO

x = sym('x', 'positive')
y = sym('y', 'positive')

syms t
syms r

fT = x*exp(-x*t)
fR = y*exp(-y*r)

fTR = simplify(fT * fR)

funzione1 = simplify(int(int(fTR, t, 0, r), r, 0, +Inf))

rapporto = matlabFunction(funzione1)

risposta1 = rapporto(1, coeff)

risposta2 = double(1/solve(rapporto(1, y) == domanda2))

disp("## RIPOSTE ##")
disp("Risposta 1")
disp(risposta1)

disp("x/y")
disp(risposta2)
