# language: es
# encoding: iso-8859-1
Característica: Quiero Ingresar al PortalTransaccional

  Escenario: ingresar al Aplicación portal de transacciones Banco Popular
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS  | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Entonces salgo de la aplicacion
    