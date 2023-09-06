Algoritmo SalvaVidas
    // Defino las variables
    Definir turnosManana, turnosTarde como Cadena
    Definir opcionMenu, opcionHorario como Entero
    Definir nombreDonante como Caracter
    Definir listaEsperaManana, listaEsperaTarde como Cadena
	
    turnosManana <- ""
    turnosTarde <- ""
    listaEsperaManana <- ""
    listaEsperaTarde <- ""
	
    Escribir "+--------------------------------------------+"
    Escribir "| Sistema de Turnos para Donación de Sangre |"
    Escribir "+--------------------------------------------+"
	
    // Detallo las opciones de turnos
    Repetir
        Escribir "1. Reservar turno por la mañana"
        Escribir "2. Reservar turno por la tarde"
        Escribir "3. Mostrar todos los turnos"
        Escribir "0. Salir del menú"
        Leer opcionMenu
        // Por cada opción que elija, le asigno un horario
        Segun opcionMenu Hacer
            Caso 1:
                Escribir "Por favor, ingrese su nombre:"
                Leer nombreDonante
                Escribir "Seleccione el horario para su turno por la mañana:"
                Escribir "1. 8:00 AM - 9:00 AM"
                Escribir "2. 9:00 AM - 10:00 AM"
                Escribir "3. 10:00 AM - 11:00 AM"
                Leer opcionHorario
				//Detallo la franja horaria de las 3 opciones con el mensaje de reserva exitosa
                Si opcionHorario >= 1 y opcionHorario <= 3 Entonces
                    Segun opcionHorario Hacer
                        Caso 1:
                            turnosManana <- turnosManana + nombreDonante + " - 8:00 AM - 9:00 AM, "
                            Escribir "Turno por la mañana reservado exitosamente de 8:00 AM a 9:00 AM."
                        Caso 2:
                            turnosManana <- turnosManana + nombreDonante + " - 9:00 AM - 10:00 AM, "
                            Escribir "Turno por la mañana reservado exitosamente de 9:00 AM a 10:00 AM."
                        Caso 3:
                            turnosManana <- turnosManana + nombreDonante + " - 10:00 AM - 11:00 AM, "
                            Escribir "Turno por la mañana reservado exitosamente de 10:00 AM a 11:00 AM."
                    FinSegun
                Sino
                    Escribir "Opción no válida. Por favor, seleccione 1, 2 o 3."
                FinSi
            Caso 2:
                Escribir "Por favor, ingrese su nombre:"
                Leer nombreDonante
                Escribir "Seleccione el horario para su turno por la tarde:"
                Escribir "4. 1:00 PM - 2:00 PM"
                Escribir "5. 2:00 PM - 3:00 PM"
                Escribir "6. 3:00 PM - 4:00 PM"
                Leer opcionHorario
				//Detallo la franja horaria de las 3 opciones		
                Si opcionHorario >= 4 y opcionHorario <= 6 Entonces
                    Segun opcionHorario Hacer
                        Caso 4:
                            turnosTarde <- turnosTarde + nombreDonante + " - 1:00 PM - 2:00 PM, "
                            Escribir "Turno por la tarde reservado exitosamente de 1:00 PM a 2:00 PM."
                        Caso 5:
                            turnosTarde <- turnosTarde + nombreDonante + " - 2:00 PM - 3:00 PM, "
                            Escribir "Turno por la tarde reservado exitosamente de 2:00 PM a 3:00 PM."
                        Caso 6:
                            turnosTarde <- turnosTarde + nombreDonante + " - 3:00 PM - 4:00 PM, "
                            Escribir "Turno por la tarde reservado exitosamente de 3:00 PM a 4:00 PM."
                    FinSegun
                Sino
                    Escribir "Opción no válida. Por favor, seleccione 4, 5 o 6."
                FinSi
				
            Caso 3:
                Escribir "Turnos reservados por la mañana:"
				Escribir "Recuerde que se atiende por órden de llegada"
                Si turnosManana <> "" Entonces
                    Escribir turnosManana
                FinSi
				
                Escribir "Turnos reservados por la tarde:"
				Escribir "Recuerde que se atiende por órden de llegada"
                Si turnosTarde <> "" Entonces
                    Escribir turnosTarde
                FinSi
				
            Caso 0:
                Escribir "Gracias por usar nuestro sistema. ¡Donar sangre salva vidas!"
            De Otro Modo:
                Escribir "Opción no válida. Por favor, seleccione 1, 2, 3 o 0."
        FinSegun
    Hasta que opcionMenu = 0
FinAlgoritmo