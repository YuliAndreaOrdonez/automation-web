# language: es
# encoding: iso-8859-1
Caracter�stica: Quiero Ingresar al PortalTransaccional y Consultar NOtas Debito y Credito

  Escenario: Consultar Notas Debito y Credito de forma Exitosa
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contrase�a|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta Notas debito y cr�dito
    Cuando ingreso parametros a consultar segun parametro tipo de archivo Tarjeta de Credito para consulta Notas Debito y Cr�dito
      |tipoProducto    | valorConsulta | horaInicial| horaFinal|
      |Cuenta Ahorros  | AHO7936       |            |          |
     Entonces ingreso periodo a consultar en Notas Debito y Cr�dito
      |periodo  | 
      |Mes/A�o  | 
     Y valido consulta de Notas Cr�dito y D�bito
 	 Entonces salgo de la aplicacion
 