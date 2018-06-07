## DATI

# Coefficiente della x come esponente della e
x_coeff = -5

# Coefficiente della y come esponente della e
y_coeff = -6


## DOMANDE

# Funzione marginale di X calcolata nel punto domanda1
domanda1 = 0.22

# Function marginale di Y calcolata nel punto domanda2
domanda2 = 0.16


## SVOLGIMENTO

syms x y

fXY = @(x, y) x_coeff * y_coeff * exp( x_coeff * x + y_coeff * y );

marginaleX = int( fXY, y, 0, +Inf)

marginaleY = int( fXY, x, 0, +Inf)

fX = matlabFunction(marginaleX)

fY = matlabFunction(marginaleY)

risposta1 = fX(domanda1)
risposta2 = fY(domanda2)

valoreAttesoX = (int( x*fX, x, 0, +Inf ))
valoreAttesoY = (int( y*fY, y, 0, +Inf ))

stocasticamenteIndipendenti = (sym(simplify(marginaleX * marginaleY)) == sym(fXY))

varianzaX = (int((x-valoreAttesoX)^2 * fX, x, 0, +Inf))
varianzaY = (int((y-valoreAttesoY)^2 * fY, y, 0, +Inf))
valoreAttesoXY = dblquad(matlabFunction(x*y*fXY), 0, +Inf, 0, +Inf)
covarianza = valoreAttesoXY - valoreAttesoX*valoreAttesoY
correlazione = double(covarianza/sqrt(varianzaX * varianzaY))

disp("Funzione di densita congiunta")
disp(sym(fXY));
disp("\n")

disp("Marginale di X")
disp(marginaleX)
disp("\n")

disp("Marginale di Y")
disp(marginaleY)
disp("\n")

disp("Risposta 1")
disp(risposta1)
disp("\n")

disp("Risposta 2")
disp(risposta2)
disp("\n")

disp("Le variabili sono stocasticamente indipendenti?")
disp(stocasticamenteIndipendenti)
disp("\n")

disp("E(X)")
disp(valoreAttesoX)
disp("\n")

disp("E(Y)")
disp(valoreAttesoY)
disp("\n")

disp("Cor(X,Y)")
disp(correlazione)
disp("\n")
