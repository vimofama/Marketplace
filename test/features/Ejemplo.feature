# Created by Cesar at 08/01/2024
# language: es
Característica: # Enter feature name here
  # Enter feature description here

  Escenario: : # Enter scenario name here
    # Enter steps here


Característica: Calificar trabajo final de verificacion y validacion
  Como profesor
  Quiero calificar el trabajo final de mis estudiantes estrictamente
  Para aprobar a los estudiantes que demuestran el conocimiento de la materia

  Escenario: Profesor califica personalmente
    Dado que un alumno ha entregado su trabajo final a tiempo
    Cuando asigno una calificacion sobre 10 basado en una rubrica
    Entonces apruebo al estudiante si la calificacion es mayor o igual a 7
    Pero si no cumple esa calificacion, repruebo al estudiante

  Escenario: Calificar a los alumnos

  Escenario: Calificar a alumno favorito (RAFA)

  Escenario: Calificar a alumno que cae mal (S)


  Escenario: Profesor delega calificacion

  Escenario: Calificacion apurada

  Escenario: Profesor califica enojado