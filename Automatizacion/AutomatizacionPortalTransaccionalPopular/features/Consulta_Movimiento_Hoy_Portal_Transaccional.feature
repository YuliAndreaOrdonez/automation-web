# language: es
# encoding: iso-8859-1
Característica: Quiero Ingresar al PortalTransaccional y Consultar Movimientos Hoy

  Escenario: consultar Movimientos hoy
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Movimientos Hoy
    Cuando ingreso parametros a consultar segun parametro tipo de archivo Tarjeta de Credito
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            | 09:00    |
    Entonces valido consulta de Movimientos hoy
	Entonces salgo de la aplicacion