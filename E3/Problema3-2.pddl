(define (problem Problema3)
		(:domain Ejercicio3)

		(:objects
				jugador1 - Player
				profesor1 - Profesor
				principe1 - Principe
				princesa1 - Princesa
				bruja1 - Bruja
				leonardo1 - Leonardo
				manzana1 - Manzana
				oscar1 - Oscar
				algoritmo1 algoritmo2 - Algoritmo
				oro1 - Oro
				rosa1 - Rosa
				zapatilla1 - Zapatilla
				bikini1 - Bikini
				z1 z2 z3 z6 z8 z11 z25 - Bosque
				z7 z9 z12 z22 z23 z24 - Agua
				z14 - Precipicio
				z4 z5 z10 z13 z20 - Arena
				z15 z16 z17 z18 z19 z21 - Piedra
		)

		(:init
				(= (orientado jugador1) 0)

				(esBosque z1)
				(esBosque z2)
				(esBikini bikini1)
				(esBosque z3)
				(esZapatilla zapatilla1)
				(esAgua z7)
				(esBosque z8)
				(esAgua z9)
				(esBosque z11)
				(esAgua z12)
				(esPrecipicio z14)
				(esAgua z22)
				(esAgua z23)
				(esAgua z24)
				(esBosque z6)
				(esBosque z25)

				(estaEn bikini1 z3)
				(estaEn zapatilla1 z4)
				(estaEn princesa1 z7)
				(estaEn principe1 z8)
				(estaEn leonardo1 z9)
				(estaEn oscar1 z9)
				(estaEn rosa1 z12)
				(estaEn bruja1 z12)
				(estaEn jugador1 z13)
				(estaEn algoritmo1 z14)
				(estaEn profesor1 z18)
				(estaEn manzana1 z18)
				(estaEn oro1 z24)
				(estaEn algoritmo2 z25)

				(= (conectadas z1 z2) 1)
				(= (conectadas z2 z1) 3)
				(= (conectadas z2 z3) 1)
				(= (conectadas z3 z2) 3)
				(= (conectadas z4 z5) 1)
				(= (conectadas z5 z4) 3)
				(= (conectadas z7 z8) 1)
				(= (conectadas z8 z7) 3)
				(= (conectadas z8 z9) 1)
				(= (conectadas z9 z8) 3)
				(= (conectadas z11 z12) 1)
				(= (conectadas z12 z11) 3)
				(= (conectadas z12 z13) 1)
				(= (conectadas z13 z12) 3)
				(= (conectadas z13 z14) 1)
				(= (conectadas z14 z13) 3)
				(= (conectadas z14 z15) 1)
				(= (conectadas z15 z14) 3)
				(= (conectadas z16 z17) 1)
				(= (conectadas z17 z16) 3)
				(= (conectadas z17 z18) 1)
				(= (conectadas z18 z17) 3)
				(= (conectadas z18 z19) 1)
				(= (conectadas z19 z18) 3)
				(= (conectadas z19 z20) 1)
				(= (conectadas z20 z19) 3)
				(= (conectadas z21 z22) 1)
				(= (conectadas z22 z21) 3)
				(= (conectadas z22 z23) 1)
				(= (conectadas z23 z22) 3)
				(= (conectadas z23 z24) 1)
				(= (conectadas z24 z23) 3)
				(= (conectadas z6 z11) 2)
				(= (conectadas z11 z6) 0)
				(= (conectadas z11 z16) 2)
				(= (conectadas z16 z11) 0)
				(= (conectadas z2 z7) 2)
				(= (conectadas z7 z2) 0)
				(= (conectadas z7 z12) 2)
				(= (conectadas z12 z7) 0)
				(= (conectadas z17 z22) 2)
				(= (conectadas z22 z17) 0)
				(= (conectadas z3 z8) 2)
				(= (conectadas z8 z3) 0)
				(= (conectadas z8 z13) 2)
				(= (conectadas z13 z8) 0)
				(= (conectadas z13 z18) 2)
				(= (conectadas z18 z13) 0)
				(= (conectadas z4 z9) 2)
				(= (conectadas z9 z4) 0)
				(= (conectadas z5 z10) 2)
				(= (conectadas z10 z5) 0)
				(= (conectadas z10 z15) 2)
				(= (conectadas z15 z10) 0)
				(= (conectadas z15 z20) 2)
				(= (conectadas z20 z15) 0)
				(= (conectadas z20 z25) 2)
				(= (conectadas z25 z20) 0)

				(= (distanciaTotal jugador1) 0)

				(= (distanciaZona z1 z2) 10)
				(= (distanciaZona z2 z1) 10)
				(= (distanciaZona z2 z3) 10)
				(= (distanciaZona z3 z2) 10)
				(= (distanciaZona z4 z5) 20)
				(= (distanciaZona z5 z4) 20)
				(= (distanciaZona z7 z8) 10)
				(= (distanciaZona z8 z7) 10)
				(= (distanciaZona z8 z9) 20)
				(= (distanciaZona z9 z8) 20)
				(= (distanciaZona z11 z12) 5)
				(= (distanciaZona z12 z11) 5)
				(= (distanciaZona z12 z13) 5)
				(= (distanciaZona z13 z12) 5)
				(= (distanciaZona z13 z14) 10)
				(= (distanciaZona z14 z13) 10)
				(= (distanciaZona z14 z15) 20)
				(= (distanciaZona z15 z14) 20)
				(= (distanciaZona z16 z17) 10)
				(= (distanciaZona z17 z16) 10)
				(= (distanciaZona z17 z18) 5)
				(= (distanciaZona z18 z17) 5)
				(= (distanciaZona z18 z19) 20)
				(= (distanciaZona z19 z18) 20)
				(= (distanciaZona z19 z20) 10)
				(= (distanciaZona z20 z19) 10)
				(= (distanciaZona z21 z22) 10)
				(= (distanciaZona z22 z21) 10)
				(= (distanciaZona z22 z23) 10)
				(= (distanciaZona z23 z22) 10)
				(= (distanciaZona z23 z24) 20)
				(= (distanciaZona z24 z23) 20)
				(= (distanciaZona z6 z11) 5)
				(= (distanciaZona z11 z6) 5)
				(= (distanciaZona z11 z16) 20)
				(= (distanciaZona z16 z11) 20)
				(= (distanciaZona z2 z7) 5)
				(= (distanciaZona z7 z2) 5)
				(= (distanciaZona z7 z12) 20)
				(= (distanciaZona z12 z7) 20)
				(= (distanciaZona z17 z22) 10)
				(= (distanciaZona z22 z17) 10)
				(= (distanciaZona z3 z8) 10)
				(= (distanciaZona z8 z3) 10)
				(= (distanciaZona z8 z13) 20)
				(= (distanciaZona z13 z8) 20)
				(= (distanciaZona z13 z18) 20)
				(= (distanciaZona z18 z13) 20)
				(= (distanciaZona z4 z9) 10)
				(= (distanciaZona z9 z4) 10)
				(= (distanciaZona z5 z10) 10)
				(= (distanciaZona z10 z5) 10)
				(= (distanciaZona z10 z15) 20)
				(= (distanciaZona z15 z10) 20)
				(= (distanciaZona z15 z20) 30)
				(= (distanciaZona z20 z15) 30)
				(= (distanciaZona z20 z25) 30)
				(= (distanciaZona z25 z20) 30)
		)

		(:goal (and (tiene profesor1 oscar1) (tiene principe1 oro1) (tiene princesa1 rosa1) (tiene bruja1 manzana1) (tiene leonardo1 algoritmo2)))

		(:metric minimize (distanciaTotal jugador1))
)