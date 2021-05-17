# language: es
# encoding: iso-8859-1
Característica: Quiero Ingresar al PortalTransaccional y Consultar Recaudos Aquirencia

  Escenario: Consulta Adquirencia 
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS  | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Recaudos Adquirencia
    Cuando ingreso parametros a consultar Recaudos Adquirencia
	|tipoProducto    | valorConsulta | tipoConsulta | red          |
    |Cuenta Ahorros  | AHO7936       |              | Ascredibanco |
	Entonces ingreso periodo de Adquirencia a consultar
	| periodo | fechaInicial | fechaFinal |
    | fechas  | 2019/11/30   | 2019/12/23 |
	Y salgo de la aplicacion
	
 