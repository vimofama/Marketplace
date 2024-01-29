from enum import Enum


class Alumno:
    def __init__(self, nombre):
        self.nombre = nombre
        self.trabajo = None
        self.estado_alumno = None

    def entregar_trabajo(self, trabajo, actividad, tiempo_entrega):
        self.trabajo = trabajo
        self.trabajo.tiempo_entrega = tiempo_entrega
        actividad.set_trabajo(self.trabajo)


class Actividad:

    def __init__(self, nombre_actividad, rubrica):
        self.nombre_actividad = nombre_actividad
        self.rubrica = rubrica
        self.trabajos = []

    def esta_entregado_a_tiempo_el_trabajo(self, trabajo):
        return trabajo.tiempo_entrega

    def set_trabajo(self, trabajo):
        self.trabajos.append(trabajo)


class Profesor:

    def __init__(self, nombre):
        self.nombre = nombre

    def calificar_trabajo(self, alumno, notas, actividad):
        calificacion = actividad.rubrica.evaluar_trabajo(notas)
        alumno.trabajo.set_calificacion(calificacion)
        if alumno.trabajo.tiempo_entrega == TiempoEntrega.CON_PERMISO or alumno.trabajo.tiempo_entrega == TiempoEntrega.ADELANTANDO:
            if alumno.trabajo.calificacion >= 6.0:
                alumno.estado_alumno = EstadoAlumno.APROBADO
                return
        else:
            if alumno.trabajo.calificacion >= 7.0:
                alumno.estado_alumno = EstadoAlumno.APROBADO
                return
        alumno.estado_alumno = EstadoAlumno.REPROBADO

class Rubrica:

    def __init__(self, criterio):
        self.criterio = criterio

    def evaluar_trabajo(self, notas):
        return sum(notas) / len(self.criterio)


class Trabajo:
    def __init__(self, nombre, contenido):
        self.nombre = nombre
        #self.fecha = datetime.now()
        self.tiempo_entrega = None
        self.calificacion = None
        self.contenido = contenido

    def set_calificacion(self, calificacion):
        self.calificacion = calificacion


class TiempoEntrega(Enum):
    A_TIEMPO = "a tiempo"
    CON_RETRASO = "con retraso"
    ADELANTANDO = "adelantando"
    CON_PERMISO = "con permiso"


class EstadoAlumno(Enum):
    APROBADO = "Aprobado"
    REPROBADO = "Reprobado"
