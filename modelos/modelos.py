from datetime import datetime


class Alumno:
    def __init__(self, nombre):
        self.nombre = nombre
        self.trabajo = None

    def entregar_trabajo(self, trabajo, actividad):
        self.trabajo = trabajo
        actividad.set_trabajo(trabajo)


class Actividad:

    def __init__(self, nombre_actividad, fecha_entrega, rubrica):
        self.nombre_actividad = nombre_actividad
        self.fecha_entrega = fecha_entrega
        self.rubrica = rubrica
        self.trabajos = []

    def esta_entregado_a_tiempo_el_trabajo(self, trabajo):
        if trabajo.fecha <= self.fecha_entrega:
            return True

        return False

    def set_trabajo(self, trabajo):
        self.trabajos.append(trabajo)


class Profesor:

    def __init__(self, nombre):
        self.nombre = nombre

    def calificar_trabajo(self, alumno, notas, actividad):
        calificacion = actividad.rubrica.evaluar_trabajo(notas)
        alumno.trabajo.set_calificacion(calificacion)
        return calificacion

    def aprobar_alumno(self, alumno):
        if alumno.trabajo.calificacion >= 7.0:
            return True
        return False


class Rubrica:

    def __init__(self, criterio):
        self.criterio = criterio

    def evaluar_trabajo(self, notas):
        return sum(notas) / len(self.criterio)


class Trabajo:
    def __init__(self, nombre, contenido):
        self.nombre = nombre
        self.fecha = datetime.now()
        self.calificacion = None
        self.contenido = contenido

    def set_calificacion(self, calificacion):
        self.calificacion = calificacion
