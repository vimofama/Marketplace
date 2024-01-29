# Created by Cesar at 08/01/2024
# language: es
Característica: # Enter feature name here
  # Enter feature description here

  Escenario: : # Enter scenario name here
    # Enter steps here


Característica: Calificar trabajo final de verificación y validación
  Como profesor
  Quiero calificar el trabajo final de mis estudiantes estrictamente
  Para aprobar a los estudiantes que demuestran el conocimiento de la materia

  Esquema del escenario: Profesor califica personalmente
    Dado que un alumno ha entregado su trabajo final <tiempo_entrega>
    Cuando asigno una calificación de <nota_trabajo> sobre <nota_maxima> basado en una rúbrica
    Entonces el alumno obtendrá <estado_alumno> de acuerdo a la nota de aprobación
    Ejemplos:
      | tiempo_entrega | nota_maxima | nota_trabajo | estado_alumno |
      | a tiempo       | 10.0        | 7.0          | Aprobado      |
      | con retraso    | 8.0         | 7.0          | Aprobado      |
      | adelantando    | 10.0        | 6.0          | Aprobado      |
      | con permiso    | 10.0        | 6.0          | Aprobado      |
      | a tiempo       | 10.0        | 3.0          | Reprobado     |

  Escenario: Calificar a los alumnos

  Escenario: Calificar a alumno favorito (RAFA)

  Escenario: Calificar a alumno que cae mal (S)

  Escenario: Profesor delega calificacion

  Escenario: Calificacion apurada

  Escenario: Profesor califica enojado