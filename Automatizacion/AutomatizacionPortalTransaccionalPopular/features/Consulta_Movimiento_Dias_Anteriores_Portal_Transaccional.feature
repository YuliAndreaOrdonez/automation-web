# language: es
# encoding: iso-8859-1
Caracter�stica: Quiero Ingresar al PortalTransaccional y Consultar Movimientos D�as anteriores

  Escenario: Consulta Movimientos d�as anteriores en los �ltimos 7 d�as 
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contrase�a|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Movimientos Dias Anteriores
    Cuando ingreso parametros a consultar
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            |          |
	Entonces ingreso periodo a consultar
	  |periodo       | fechaInicial | fechaFinal |
	  |�ltimos 7 D�as| 			    |            |
	Y valido consulta de Dias Anteriores
	Y salgo de la aplicacion
	
  Escenario: Consulta Movimientos d�as anteriores Ayer
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contrase�a|
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
	
	Escenario: Consulta Movimientos d�as anteriores rango de fechas 
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contrase�a|
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
	
	Escenario: Consulta Movimientos d�as anteriores Mes a�o
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contrase�a|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Movimientos Dias Anteriores
    Cuando ingreso parametros a consultar
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            |          |
	Entonces ingreso periodo a consultar
	  |periodo | fechaInicial | fechaFinal |
	  |Mes/A�o | 		      |            |
	 Y valido consulta de Dias Anteriores
	 Y salgo de la aplicacion