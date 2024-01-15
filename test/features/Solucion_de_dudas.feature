# Created by Cesar at 08/01/2024
# language: es
Característica: Solución de dudas.
  Como minorista
  Quiero solventar las dudas de los posibles compradores, a través de mensajes directos,
  Para aumentar el número de cliente que escogen mis productos.

  Escenario: Responder a las preguntas para solventar dudas
    Dado que soy un minorista con una cuenta activa
    Y tengo un mensaje directo pendiente de un posible comprador con la pregunta "¿Como funcionan los envios?"
    Cuando el minorista responde a la pregunta con la informacion detallada sobre el proceso de envio
    Entonces el sistema registra mi respuesta y la asocia al mensaje original
    Y el mensaje directo con la pregunta "¿Como funcionan los envios?" cambia su estado a "respondido"
    Y el sistema envia un mensaje directo al comprador con la respuesta a su pregunta
    Y la respuesta queda registrada para futuras referencias en el historial de mensajes

