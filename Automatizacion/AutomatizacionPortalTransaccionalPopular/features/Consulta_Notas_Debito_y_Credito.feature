# language: es
# encoding: iso-8859-1
Característica: Quiero Ingresar al PortalTransaccional y Consultar NOtas Debito y Credito

  Escenario: Consultar Notas Debito y Credito de forma Exitosa
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta Notas debito y crédito
    Cuando ingreso parametros a consultar segun parametro tipo de archivo Tarjeta de Credito para consulta Notas Debito y Crédito
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            |          |
     Entonces ingreso periodo a consultar en Notas Debito y Crédito
      |periodo  | 
      |Mes/Año  | 
     Y valido consulta de Notas Crédito y Débito
 	 Entonces salgo de la aplicacion
 