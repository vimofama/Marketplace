# Created by Cesar at 08/01/2024
# language: es
Característica: Solución de dudas
  Como minorista
  Quiero solventar las dudas de los posibles compradores, a través de comentarios públicos,
  Para aumentar el número de compradores que escogen mis productos.

  Escenario: Responder a las preguntas para solventar dudas
    Dado que un Minorista tiene Comentarios con preguntas sobre mis Productos
    Cuando el Minorista responde a los Comentarios
    Y los Compradores respondan que fueron útiles las respuestas
    Entonces se mostrarán las preguntas y respuestas en los Comentarios del Producto por orden de valoración de los Compradores
