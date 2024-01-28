# Created by Cesar at 09/01/2024
# language: es
Característica: Calificar el servicio de pedidos
  Como administrador
  Quiero que todos los clientes proporcionen retroalimentación sobre los pedidos han recibido,
  mediante una calificación del 1 al 5,
  Para evaluar la confiabilidad de cada minorista

  Escenario: Clientes califican el servicio de pedidos
    Dado que los Clientes han recibido sus Pedidos
    Cuando los Clientes califiquen sus Pedidos del 1 al 5
    Y un Minorista tengan 10 calificaciones como mínimo
    Entonces el Minorista se clasificará como "Confiable" si tiene un promedio mayor a 2
    Pero si no alcanza a ese promedio, se clasificará como "No confiable"
