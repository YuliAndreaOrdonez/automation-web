# language: es
# encoding: iso-8859-1
Característica: Quiero Ingresar al PortalTransaccional y Consultar Recaudo Hoy

  Escenario: consultar Recaudo hoy
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS2 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Recaudos Hoy
    Cuando ingreso parametros a consultar Recaudo
      |tipoProducto    | valorConsulta | horaInicial | horaFinal | tipoRecaudo | categoria | departamento | city         | office       |
      |Cuenta Ahorros  | AHO7936       |             | 09:00     | Nacional    | Oficinas  | Cundinamarca | Agua de Dios | AGUA DE DIOS |
    Entonces valido consulta de Recaudo hoy
	Entonces salgo de la aplicacion