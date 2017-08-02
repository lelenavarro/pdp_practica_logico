/* Practica Prolog - Festivales de Rock */

anioActual(2017).

/* festival(nombre, lugar, bandas, precioBase)*/
/* lugar(nombre, capacidad) */
festival(lulapaluza, lugar(hipodromo, 40000), [miranda, paulMasCarne, muse], 500).
festival(mostrosDelRock, lugar(granRex, 10000), [kiss, judasPriest, blackSabbath], 1000).
festival(personalFest, lugar(geba, 5000), [tanBionica, miranda, muse, pharellWilliams], 300).
festival(cosquinRock, lugar(aerodromo, 2500), [erucaSativa, laRenga], 400).

/* banda(nombre, año, nacionalidad, popularidad) */
banda(paulMasCarne, 1960, uk, 70).
banda(muse, 1994, uk, 45).
banda(kiss, 1973, us, 63).
banda(erucaSativa, 2007, ar, 60).
banda(judasPriest, 1969, uk, 91).
banda(tanBionica, 2012, ar, 71).
banda(miranda, 2001, ar, 38).
banda(laRenga, 1988, ar, 70).
banda(blackSabbath, 1968, uk, 96).
banda(pharellWilliams, 2014, us, 85).

/* entradasVendidas(nombreDelFestival, tipoDeEntrada, cantVendidas) */
/* tipos de entradas: campo, plateaNumerada(numero de fila), plateaGeneral(zona) */
entradasVendidas(lulapaluza, campo, 600).
entradasVendidas(lulapaluza, plateaGeneral(zona1), 200).
entradasVendidas(lulapaluza, plateaGeneral(zona2), 300).
entradasVendidas(mostrosDelRock, campo, 20000).
entradasVendidas(mostrosDelRock, plateaNumerada(1), 40).
entradasVendidas(mostrosDelRock, plateaNumerada(2), 30).
entradasVendidas(mostrosDelRock, plateaNumerada(3), 56).
entradasVendidas(mostrosDelRock, plateaNumerada(4), 60).
entradasVendidas(mostrosDelRock, plateaNumerada(5), 70).
entradasVendidas(mostrosDelRock, plateaNumerada(6), 10).
entradasVendidas(mostrosDelRock, plateaNumerada(7), 23).
entradasVendidas(mostrosDelRock, plateaNumerada(8), 34).
entradasVendidas(mostrosDelRock, plateaNumerada(9), 78).
entradasVendidas(mostrosDelRock, plateaNumerada(10), 40).
entradasVendidas(mostrosDelRock, plateaGeneral(zona1), 300).
entradasVendidas(mostrosDelRock, plateaGeneral(zona2), 500).

plusZona(hipodromo, zona1, 55).
plusZona(hipodromo, zona2, 20).
plusZona(granRex, zona1, 45).
plusZona(granRex, zona2, 30).
plusZona(aerodromo, zona1, 25).

/* Punto 01 */
/* estaDeModa(Banda) se cumple para las bandas recientes (que surgieron en los ultimos 5 años) que tienen una popularidad moyor a 70 */
/* tanBionica y pharellWilliams */




/* Punto 02 */
/* esCareta(Festival) se cumple para todo festival que cumpla alguna de las siguientes condiciones: */
/* . que participen al menos 2 bandas que esten de moda */
/* . que no tenga entradas razonables (punto 3) */
/* . si toca miranda */


/* Punto 03 */
/* entradaRazonable(Festival, Entrada) relaciona un festival con una entrada del mismo si se cumple: */
/* . para la platea general, si el plus de la zona es menos del 10% de la entrada */
/* . para campo, el precio de la entrada es menor a la popularidad total del festival. la popularidad total es la suma de la popularidad de todas las bandas que participan */
/* . para la platea nuemerada, si alguna de las bandas que tocan esta de moda, el precio no puede superar los $750, de lo contrario, el precio debera ser menor a la capacidad del estadio dividido la popularidad total del festival */

/*  los precios de las distintas entradas se calculan de la siguiente forma */
/*  . precio de campo: es el precio base del festival */
/*  . precio de la platea numerada: precio base + 200 / numero de fila */
/*  . precio de la platea general: precio base + plus de la zona */

/* Punto 04 */
/* nacanpop(Festival) se cumple para un festival si todas las bandas que participan del mismo son nacionales y algunas de sus entradas es razonable */
/* cosquinRock */



/* Punto 05 */
/* recaudacion(Festival, Total) relaciona un festival con su recaudacion, que se calcula como la suma del precio de todas las entradas vendidas (multiplicar el valor de una entrada por la cantidad vendida de la misma) */
/* lulapaluza, 567000 */
/* mostrosDelRock 20879500 */




/* Punto 06 */
/* estaBienPlaneado(Festival) se cumple si las bandas que participan van creciend en popularidad, y la banda que cierra el festival es legendaria */
/*  una banda es legendaria cuando surgio antes de 1980, es internacional, y tiene una popularidad mayor a la de todas las bandas de moda.*/
/*  mostrosDelRock*/

