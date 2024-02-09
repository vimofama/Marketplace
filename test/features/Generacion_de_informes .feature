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

  """
   Promedio de todos los vendedores en la misma categoria
   Rendimiento homegeneo
   Ingresos totales
   Ingresos por producto o linea de productos
   Tasa de ventas por vendedor
   Crecimiento mensual
  """
"""

Característica: Obtención de métricas de ventas mensualizadas por vendedor
  Como vendedor (minorista)
  Quiero obtener ingresos totales, ingresos por producto, tasa de ventas y crecimiento mensual
  Para evaluar mi rendimiento en comparación al rendimiento promedio de vendedores

  Escenario: Nuevo vendedor
    Dado que el vendedor tiene su primer mes de ventas
    Cuando se despliegue el Dashboard de Métricas
    Entonces se mostrará los ingresos totales e ingresos por producto
    Y determinará mi rendimiento comparando mi tasa de ventas con el promedio de todos los vendedores

  Escenario: Vendedor con mas de un mes de antigüedad
    Dado que el vendedor tiene más de un mes de ventas
    Cuando se despliegue el Dashboard de Métricas
    Entonces se mostrará los ingresos totales e ingresos por producto
    Y determinará mi rendimiento comparando mi tasa de ventas con el promedio de todos los vendedores
    Y mostrará el crecimiento mensual de mis ventas
"""

Característica: Obtención de métricas de ventas mensualizadas por vendedor
  Como vendedor (minorista)
  Quiero evaluar mi rendimiento mediante las métricas: ingresos totales, ingresos por producto, tasa de ventas
  y crecimiento mensual
  Para encontrar las posibles causas de las métricas que están consiguiendo.

  Escenario:


Característica: Obtención de métricas de ventas mensualizadas por vendedor
  Como vendedor (minorista)
  Quiero evaluar mi rendimiento mensual mediante los ingresos totales por productos
  Para determinar posibles soluciones al presentarse un bajo rendimiento.

  Escenario: Productos con bajo rendimiento
    Dado que un vendedor tiene un Producto de la Categoría herramientas
    Y los ingresos del producto son 30% inferior al promedio de los ingresos de los productos en la Categoría herramientas en el último mes
    Cuando se despliegue el Dashboard de Métricas
    Entonces se recomienda dar de baja al producto

  Escenario: Ajuste de precios
    Dado que un vendedor tiene un Producto de la Categoria herramientas
    Y los ingresos del producto son entre 30% y 50% inferior al promedio los ingresos de los productos en la Categoría herramientas en el último mes
    Cuando se despliegue el Dashboard de Métricas
    Entonces se recomienda ajustar el precio del producto.
