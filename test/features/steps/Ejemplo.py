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
    context.alumno = Alumno("nombre")
    context.actividad_final = Actividad("Proyecto final")
    context.alumno.entregar_trabajo_final(context.actividad_final)
    assert(context.actividad_final.esta_entregado_a_tiempo_el_trabajo(context.alumno.trabajo_final) == True)


@step("asigno una calificacion sobre 10 basado en una rubrica")
def step_impl(context):
    """
    Debe existir una rúbrica
    el trabajo del alumno debe ser calificado por el profesor
    """
    pass


@step("apruebo al estudiante si la calificacion es mayor o igual a 7")
def step_impl(context):
    """
    Si el estudiante tiene 7 sobre 10 o más debe estar aprobado
    """
    pass


@step("si no cumple esa calificacion, repruebo al estudiante")
def step_impl(context):
    """
    Si el estudiante tiene menos de 7 sobre 10 debe estar reprobado
    """
    pass
