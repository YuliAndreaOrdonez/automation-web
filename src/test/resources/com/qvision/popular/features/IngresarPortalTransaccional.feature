# language: es
# encoding: iso-8859-1
Caracter�stica: Quiero Ingresar al PortalTransaccional

  Escenario:Ingresar a la Aplicaci�n portal de transacciones Banco Popular
    Dado Que ingreso al protal transaccional del banco
    Cuando Inicio sesion en el Portal Transaccional
      | usuario | contrase�a |
      |         |            |
    Entonces Valido la sesion en el portal transaccional