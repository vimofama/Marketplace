# Created by DELL at 8/1/2024
# language: es
Característica: Monitoreo de pedidos
  Como minorista
  Quiero conocer el porcentaje de pedidos con retraso e información de dichos pedidos,
  como la ubicación y el tiempo de retraso
  Para detectar y solucionar patrones.

  Escenario: Existen 3 pedidos con retraso en una sola ubicación y 2 pedidos entregados a tiempo
    Dado que un Minorista tiene 3 Pedidos con "Retraso" para una misma ubicación
    Y tiene 2 Pedidos entregados a tiempo
    Cuando se despliegue el Dashboard de Monitoreo
    Entonces se mostrará el porcentaje de Pedidos con el valor de 60%
    Y la ubicación donde se dieron estos retrasos
    Y el promedio del tiempo de retraso

  Escenario: Existen 3 pedidos con retraso en múltiples ubicaciones y 2 pedidos entregados a tiempo
    Dado que un Minorista tiene 2 Pedidos con retraso para una ubicación
    Y el Minorista tiene 1 Pedido con "Retraso" para otra ubicación
    Y el Minorista tiene 2 Pedidos entregados a tiempo
    Cuando se despliegue el Dashboard de Monitoreo
    Entonces se mostrará el porcentaje de Pedidos con el valor de 60%
    Y las ubicaciones donde se dieron estos retrasos ordenados por la cantidad de Pedidos con "Retraso"
    Y el promedio del tiempo de retraso por ubicación