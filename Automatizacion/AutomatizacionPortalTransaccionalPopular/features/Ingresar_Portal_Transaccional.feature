# language: es
# encoding: iso-8859-1
Caracter�stica: Quiero Ingresar al PortalTransaccional

  Escenario: ingresar al Aplicaci�n portal de transacciones Banco Popular
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contrase�a|
      | AutomatizacionICBS  | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Entonces salgo de la aplicacion
    