from behave import *
from modelos.modelos import *

use_step_matcher("re")


@step("que un alumno ha entregado su trabajo final a tiempo")
def step_impl(context):
    """
    Debe existir un alumno
    el alumno entrega un trabajo final
    el trabajo está dentro de la fecha
    """
    context.profesor = Profesor("nombre")
    context.alumno = Alumno("Mateo")
    context.trabajo = Trabajo("Trabajo final", [10, 10, 10, 10])
    context.actividad = Actividad("Trabajo final", datetime(2024, 1, 30),
                                  Rubrica(['Presentacion', 'Nivel tecnico', 'Organizacion', 'Riguroso']))
    context.alumno.entregar_trabajo(context.trabajo, context.actividad)
    assert (context.actividad.esta_entregado_a_tiempo_el_trabajo(context.trabajo) == True), "El trabajo no fue entregado a tiempo"


@step("asigno una calificacion sobre 10 basado en una rubrica")
def step_impl(context):
    """
    Debe existir una rúbrica
    el trabajo del alumno debe ser calificado por el profesor
    """
    context.nota_obtenida = context.profesor.calificar_trabajo(context.alumno, context.actividad)
    assert 0 <= context.nota_obtenida <= 10, f"La nota {context.nota_obtenida} no está en el rango de 0 a 10"


@step("apruebo al estudiante si la calificacion es mayor o igual a 7")
def step_impl(context):
    """
    Si el estudiante tiene 7 sobre 10 o más debe estar aprobado
    """
    context.aprobado = context.profesor.aprobar_alumno(context.alumno)
    assert (context.aprobado == True), f"Estudiante {context.alumno.nombre} reprobado"


@step("si no cumple esa calificacion, repruebo al estudiante")
def step_impl(context):
    """
    Si el estudiante tiene menos de 7 sobre 10 debe estar reprobado
    """
    context.aprobado = context.profesor.aprobar_alumno(context.alumno)
    assert (context.aprobado == False), f"Estudiante {context.alumno.nombre} aprobado"
