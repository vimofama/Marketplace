# Created by Cesar at 08/01/2024
# language: es
Característica: Generación de métricas de ventas
  Como minorista
  Quiero generar resúmenes sobre los ingresos y los productos más vendidos en cada mes
  Para evaluar la eficiencia del negocio y optimizar el tiempo de análisis.

  Escenario: Generar informe del último mes
    Dado que un Minorista tiene 10 Pedidos en enero 2023
    Y la fecha actual es 1 de febrero 2023
    Y el Minorista tiene 5 Productos
    Cuando se despliegue el Dashboard de Informes
    Entonces se mostrará el resumen de ingresos de enero 2023
    Y los 3 Productos más vendidos de enero 2023
