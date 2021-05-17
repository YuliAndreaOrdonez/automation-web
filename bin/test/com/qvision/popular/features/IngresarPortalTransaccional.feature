# language: es
# encoding: iso-8859-1
Característica: Quiero Ingresar al PortalTransaccional

  Escenario:Ingresar a la Aplicación portal de transacciones Banco Popular
    Dado Que ingreso al protal transaccional del banco
    Cuando Inicio sesion en el Portal Transaccional
      | usuario | contraseña |
      |         |            |
    Entonces Valido la sesion en el portal transaccional