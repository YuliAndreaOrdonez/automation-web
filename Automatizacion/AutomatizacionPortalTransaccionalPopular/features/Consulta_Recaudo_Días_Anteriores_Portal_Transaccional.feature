# language: es
# encoding: iso-8859-1
Caracter�stica: Quiero Ingresar al PortalTransaccional y Consultar Recaudo d�as anteriores

  Escenario: consultar Recaudo d�as anteriores
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contrase�a|
      | AutomatizacionICBS3 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Dado ingreso a la consulta de Recaudos d�as anteriores
    Cuando ingreso parametros a consultar Recaudo d�as anteriores
      |tipoProducto    | valorConsulta | fechaInicial | fechaFinal | tipoRecaudo | categoria | departamento | city         | office       |
      |Cuenta Ahorros  | AHO7936       | 2019/11/30   | 2019/12/23 | Nacional    | Oficinas  | Cundinamarca | Agua de Dios | AGUA DE DIOS |
	Entonces salgo de la aplicacion