Algoritmo asignacion_de_habitaciones
	Definir opcion, totalHabitaciones, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir persona, numeroHabitacion, tipoHabitacion, fechaIngreso, fechaSalida, estado Como Cadena
	Dimension id[100]
	Dimension persona[100]
	Dimension numeroHabitacion[100]
	Dimension tipoHabitacion[100]
	Dimension fechaIngreso[100]
	Dimension fechaSalida[100]
	Dimension estado[100]
	totalHabitaciones <- 0
	siguienteID <- 1
	//--------------------------------------------//
	//--|menu_principal_asignacion_habitaciones|--//
	//--------------------------------------------//
	Repetir
		Escribir "menu principal asignacion de habitaciones"
		Escribir "1) registrar asignacion"
		Escribir "2) editar asignacion"
		Escribir "3) eliminar asignacion"
		Escribir "4) buscar asignacion"
		Escribir "5) listar asignaciones"
		Escribir "6) ver detalles"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//--------------------------//
			//--|registrar_habitacion|--//
			//--------------------------//
			1:
				Escribir "registrar asignacion de habitacion"
				id[totalHabitaciones+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "ingrese nombre de la persona:"
				Leer persona[totalHabitaciones+1]
				Escribir "ingrese numero de habitacion:"
				Leer numeroHabitacion[totalHabitaciones+1]
				Escribir "ingrese tipo de habitacion:"
				Leer tipoHabitacion[totalHabitaciones+1]
				Escribir "ingrese fecha de ingreso:"
				Leer fechaIngreso[totalHabitaciones+1]
				Escribir "ingrese fecha de salida:"
				Leer fechaSalida[totalHabitaciones+1]
				Escribir "ingrese estado (ocupada/disponible/reservada):"
				Leer estado[totalHabitaciones+1]
				totalHabitaciones <- totalHabitaciones + 1
				Escribir "asignacion registrada correctamente."
			//-----------------------//
			//--|editar_habitacion|--//
			//-----------------------//
			2:
				Escribir "editar asignacion"
				Si totalHabitaciones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalHabitaciones Hacer
						Escribir id[i], " | ", persona[i], " | ", numeroHabitacion[i], " | ", tipoHabitacion[i], " | ", fechaIngreso[i], " | ", fechaSalida[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHabitaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre de la persona:"
							Leer persona[i]
							Escribir "ingrese el nuevo numero de habitacion:"
							Leer numeroHabitacion[i]
							Escribir "ingrese el nuevo tipo de habitacion:"
							Leer tipoHabitacion[i]
							Escribir "ingrese la nueva fecha de ingreso:"
							Leer fechaIngreso[i]
							Escribir "ingrese la nueva fecha de salida:"
							Leer fechaSalida[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "asignacion editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una asignacion con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|eliminar_habitacion|--//
			//-------------------------//
			3:
				Escribir "eliminar asignacion"
				Si totalHabitaciones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalHabitaciones Hacer
						Escribir id[i], " | ", persona[i], " | ", numeroHabitacion[i], " | ", tipoHabitacion[i], " | ", fechaIngreso[i], " | ", fechaSalida[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHabitaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalHabitaciones Entonces
								Para j <- i Hasta totalHabitaciones - 1 Hacer
									id[j] <- id[j+1]
									persona[j] <- persona[j+1]
									numeroHabitacion[j] <- numeroHabitacion[j+1]
									tipoHabitacion[j] <- tipoHabitacion[j+1]
									fechaIngreso[j] <- fechaIngreso[j+1]
									fechaSalida[j] <- fechaSalida[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalHabitaciones <- totalHabitaciones - 1
							Escribir "asignacion eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una asignacion con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|buscar_habitacion|--//
			//-----------------------//
			4:
				Escribir "buscar asignacion"
				Si totalHabitaciones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHabitaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							
							Escribir "datos encontrados"
							Escribir id[i], " | ", persona[i], " | ", numeroHabitacion[i], " | ", tipoHabitacion[i], " | ", fechaIngreso[i], " | ", fechaSalida[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una asignacion con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|listar_habitaciones|--//
			//-------------------------//
			5:
				Escribir "listar asignaciones"
				Si totalHabitaciones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalHabitaciones Hacer
						Escribir id[i], " | ", persona[i], " | ", numeroHabitacion[i], " | ", tipoHabitacion[i], " | ", fechaIngreso[i], " | ", fechaSalida[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_habitacion|--//
			//-----------------------------//
			6:
				Escribir "ver detalles de la asignacion"
				Si totalHabitaciones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalHabitaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la asignacion"
							Escribir "id: ", id[i]
							Escribir "persona: ", persona[i]
							Escribir "numero de habitacion: ", numeroHabitacion[i]
							Escribir "tipo de habitacion: ", tipoHabitacion[i]
							Escribir "fecha de ingreso: ", fechaIngreso[i]
							Escribir "fecha de salida: ", fechaSalida[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una asignacion con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalHabitaciones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					totalDisponibles <- 0
					totalReservadas <- 0
					totalOcupadas <- 0
					Para i <- 1 Hasta totalHabitaciones Hacer
						Si estado[i] = "disponible" Entonces
							totalDisponibles <- totalDisponibles + 1
						FinSi
						Si estado[i] = "reservada" Entonces
							totalReservadas <- totalReservadas + 1
						FinSi
						Si estado[i] = "ocupada" Entonces
							totalOcupadas <- totalOcupadas + 1
						FinSi
					FinPara
					Escribir "estadistica general"
					Escribir "total de habitaciones: ", totalHabitaciones
					Escribir "habitaciones disponibles: ", totalDisponibles
					Escribir "habitaciones reservadas: ", totalReservadas
					Escribir "habitaciones ocupadas: ", totalOcupadas
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asignacion de habitaciones."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo