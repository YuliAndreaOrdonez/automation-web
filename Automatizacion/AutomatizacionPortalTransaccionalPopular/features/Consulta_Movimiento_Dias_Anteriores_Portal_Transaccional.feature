# language: es
# encoding: iso-8859-1
Característica: Quiero Ingresar al PortalTransaccional y Consultar Movimientos Días anteriores

  Escenario: Consulta Movimientos días anteriores en los últimos 7 días 
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Movimientos Dias Anteriores
    Cuando ingreso parametros a consultar
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            |          |
	Entonces ingreso periodo a consultar
	  |periodo       | fechaInicial | fechaFinal |
	  |Últimos 7 Días| 			    |            |
	Y valido consulta de Dias Anteriores
	Y salgo de la aplicacion
	
  Escenario: Consulta Movimientos días anteriores Ayer
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Movimientos Dias Anteriores
    Cuando ingreso parametros a consultar
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            |          |
	Entonces ingreso periodo a consultar
	  |periodo | fechaInicial | fechaFinal |
	  |Ayer    | 		      |            |
	Y valido consulta de Dias Anteriores
	Y salgo de la aplicacion
	
	Escenario: Consulta Movimientos días anteriores rango de fechas 
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Movimientos Dias Anteriores
    Cuando ingreso parametros a consultar
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            |          |
	Entonces ingreso periodo a consultar
	  |periodo | fechaInicial | fechaFinal |
	  |fechas  | 2019/08/10	  | 2019/11/19 |
	Y valido consulta de Dias Anteriores
	Y salgo de la aplicacion
	
	Escenario: Consulta Movimientos días anteriores Mes año
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Movimientos Dias Anteriores
    Cuando ingreso parametros a consultar
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            |          |
	Entonces ingreso periodo a consultar
	  |periodo | fechaInicial | fechaFinal |
	  |Mes/Año | 		      |            |
	 Y valido consulta de Dias Anteriores
	 Y salgo de la aplicacion