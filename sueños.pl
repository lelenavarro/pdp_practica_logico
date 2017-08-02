/* Practica Logico: Sueños */

creeEn(gabriel, campanita).
creeEn(gabriel, magoDeOz).
creeEn(gabriel, cavenaghi).
creeEn(juan, conejoDePascua).
creeEn(macarena, reyesMagos).
creeEn(macarena, magoCapria).
creeEn(macarena, campanita).

querer(gabriel, loteria([5,9])).
querer(gabriel, futbolista(arsenal)).
querer(juan, cantante(100000)).
querer(macarena, cantante(10000)).

esChico(arsenal).
esChico(aldosivi).

/* Punto 02 */
esAmbiciosa(Persona):- findall(Dificultad, condDificultad(Persona, Dificultad), ListaDificultad), sumlist(ListaDificultad, Cantidad), Cantidad > 20.

condDificultad(Persona, Dificultad):- querer(Persona, Sueno), dificultad(Sueno, Dificultad).

dificultad(cantante(X), 6):- X > 500000.
dificultad(cantante(X), 4):- X =< 500000.
dificultad(loteria(Lista), Dificultad):- length(Lista, X), Dificultad is 10 * X.
dificultad(futbolista(X), 3):- esChico(X).
dificultad(futbolista(X), 16):- not(esChico(X)).

/* Punto 03 */
quimica(Persona, Personaje):- condQuimica(Persona, Personaje).

condQuimica(Persona, campanita):- creeEn(Persona, campanita), condDificultad(Persona, Dificultad), Dificultad < 5.
condQuimica(Persona, Personaje):- creeEn(Persona, Personaje), Personaje \= campanita, not(esAmbiciosa(Persona)), sueniosPuros(Persona).

sueniosPuros(Persona):- forall(querer(Persona, Sueno)), esPuro(Sueno).

esPuro(futbolista(_)).
esPuro(cantante(X)):- X < 200000.

/* Punto 04 */
esAmiga(campanita, reyesMagos).
esAmiga(campanita, conejoDePascua).
esAmiga(conejoDePascua, cavenaghi).

estaEnfermo(campanita).
estaEnfermo(reyesMagos).
estaEnfermo(conejoDePascua).

puedeAlegrar(Persona, Personaje):- querer(Persona, _), creeEn(_, Personaje).
puedeAlegrar(Persona, Personaje):- quimica(Persona, Personaje), condAlegrar(Personaje).

condAlegrar(Personaje):- not(estaEnfermo(Personaje)).
condAlegrar(Personaje):- esAmiga(Personaje, Backup), condAlegrar(Backup).