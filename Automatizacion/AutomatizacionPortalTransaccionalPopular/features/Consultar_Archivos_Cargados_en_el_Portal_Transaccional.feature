# language: es
# encoding: iso-8859-1
Característica: Consultar archivos Pagos, Cheques de Gerencia y prenotificaciones.

  Escenario: Consultar Archivo Cheques de gerencia y verificar el estado del Archivo
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS3 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo             | fecha       | 
      | AI: Cheques de Gerencia | fechaActual | 
  	Y valido consulta de archivos
 	Y salgo de la aplicacion
    
  Escenario: Consultar Archivo Pre Notificaciones y verificar el estado del Archivo
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS3 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo             | fecha        | 
      | Pre Notificación Pagos  | fechaActual  | 
  	Y valido consulta de archivos
	Y valido detalles de cada registro del archivo
    Y salgo de la aplicacion
   
   Escenario: Consultar Archivo Pagos y verificar el estado del Archivo 
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS3 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo | fecha       | 
      | Pagos       | fechaActual | 
  	Y valido consulta de archivos
	Y valido detalles de cada registro del archivo
    Y salgo de la aplicacion
    
    Escenario: Consultar Archivo Cheques de gerencia y verificar el estado del Archivo en un rango de Quince días
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS3 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo             | fecha       | 
      | AI: Cheques de Gerencia | quinceDias  | 
  	Y valido consulta de archivos
 	Y salgo de la aplicacion
    
  Escenario: Consultar Archivo Pre Notificaciones y verificar el estado del Archivo treinta días
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS3 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo             | fecha | 
      | Pre Notificación Pagos  | unMes | 
  	Y valido consulta de archivos
	Y valido detalles de cada registro del archivo
    Y salgo de la aplicacion
   
   Escenario: Consultar Archivo Pagos y verificar el estado del Archivo en fecha actual
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña|
      | AutomatizacionICBS3 | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
    Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo | fecha       | 
      | Pagos       | fechaActual | 
  	Y valido consulta de archivos
	Y valido detalles de cada registro del archivo
    Y salgo de la aplicacion
   