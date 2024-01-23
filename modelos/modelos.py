class Alumno:
    def __init__(self, nombre):
        self.trabajo_final = None
        self.nombre = nombre
        self.tarea = True

    def entregar_trabajo_final(self, actividad_final):
        self.trabajo_final = True


class Actividad:

    def __init__(self, nombre_actividad):
        self.nombre_actividad = nombre_actividad
        
    def esta_entregado_a_tiempo_el_trabajo(self, trabajo_final):
        return True
