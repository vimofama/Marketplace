from behave import *
from modelos.modelos import *

use_step_matcher("re")


@step("que un alumno ha entregado su trabajo final (?P<tiempo_entrega>.+)")
def step_impl(context, tiempo_entrega):
    """
    Debe existir un alumno
    el alumno entrega un trabajo final
    """
    context.profesor = Profesor("nombre")
    context.alumno = Alumno("Mateo")
    context.trabajo = Trabajo("Trabajo final", "Lorem ipsum dolor sit amet.")
    context.actividad = Actividad("Trabajo final",
                                  Rubrica(['Presentacion', 'Nivel tecnico', 'Organizacion', 'Riguroso']))
    context.alumno.entregar_trabajo(context.trabajo, context.actividad, TiempoEntrega(tiempo_entrega))
    assert (context.actividad.existe_trabajo(context.alumno.trabajo) == True), f"El trabajo no se entrego"

@step("asigno una calificación de (?P<nota_trabajo>\d+\.\d+) sobre (?P<nota_maxima>\d+\.\d+) basado en una rúbrica")
def step_impl(context, nota_trabajo, nota_maxima):
    """
    Debe existir una rúbrica
    el trabajo del alumno debe ser calificado por el profesor
    """
    context.profesor.calificar_trabajo(context.alumno, float(nota_trabajo), context.actividad)
    assert 0 <= context.trabajo.calificacion <= float(nota_maxima), f"La nota {context.trabajo.calificacion} no está en el rango de 0 a {nota_maxima}"


@step("el alumno obtendrá (?P<estado_alumno>.+) de acuerdo a la nota de aprobación")
def step_impl(context, estado_alumno):
    assert (context.alumno.estado_alumno == EstadoAlumno(estado_alumno))
