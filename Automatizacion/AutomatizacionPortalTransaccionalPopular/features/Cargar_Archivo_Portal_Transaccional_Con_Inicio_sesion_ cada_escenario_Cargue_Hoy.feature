# language: es
# encoding: iso-8859-1
Característica: Cargar  tipo de archivos como pagos, cheques  de  gerencia y pre Notificaciones

Escenario: Cargar Archivo Dividendos de forma exitosa
   	Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña |
      | AutomatizacionICBS  | 3121aLejo/ |
    Entonces valido la sesion en el portal transaccional
    Dado que ingreso a la opcion carga de archivos
    Cuando ingreso parametros a cargar
      | tipoArchivo | fechaCargue |
      | Pagos		|             |
    Entonces cargo el archivo
    Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo | fecha       | 
      | Pagos       | fechaActual | 
  	Y valido consulta de archivos
    Y valido estado de archivos y enviar archivo
    Y salgo de la aplicacion
 
 Escenario: Cargar Archivo Cheque de Gerencia de forma exitosa
    Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña |
      | AutomatizacionICBS  | 3121aLejo/|
    Entonces valido la sesion en el portal transaccional
	Dado que ingreso a la opcion carga de archivos
    Cuando ingreso parametros a cargar
      | tipoArchivo             | fechaCargue |
      | AI: Cheques de Gerencia | 			  |
	Entonces cargo el archivo
  	Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo             | fecha       | 
      | AI: Cheques de Gerencia | fechaActual | 
    Y valido consulta de archivos
    Y valido estado de archivos y enviar archivo
    Y salgo de la aplicacion

   	
   	Escenario: Cargar Archivo Prenotificaciones de forma Exitosa
 	Dado que ingreso al portal transaccional del banco
    Cuando inicio sesion en el Portal Transaccional
      | usuario 	        | contraseña | 
      | AutomatizacionICBS  | 3121aLejo |             
    Entonces valido la sesion en el portal transaccional
    Dado que ingreso a la opcion carga de archivos
    Cuando ingreso parametros a cargar
      | tipoArchivo		      | fechaCargue |
      |Pre Notificación Pagos |             |
    Entonces cargo el archivo
    Entonces ingreso a la consulta del cargue de archivos
    Entonces ingreso parametros a consultar segun parametro tipo de archivo pagos
      | tipoArchivo             | fecha        | 
      | Pre Notificación Pagos  | fechaActual  | 
  	Y valido consulta de archivos
    Y valido estado de archivos y enviar archivo
    Y salgo de la aplicacion
   	
    
    
    
    