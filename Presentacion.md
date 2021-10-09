<!---Para subrayar:     <span style="text-decoration: underline">   </span>        ---> 
 <!---Para subrayar + negrita:    **<span style="text-decoration: underline">   </span>**         ---> 
<!---Para centrar:     <span style="text-align: center"> </span>  --->

# Este archivo se eliminará en los proximos commits. 



####  Grupo X - Alumnos: Feldman, Martin & Schmitt, Gabriel   
<br/> <br/> 


# **Presentación Trabajo Integrador para Programación Orientada a Objetos II**

<br/> <br/>



El producto software a desarrollar se denomina:

# ***Sistema de gestión de expedientes para la entidad  administrativa Colegio de Arquitectos de Misiones***

<br/> 


##  Especificación de requisitos de software


#### &nbsp;&nbsp; &nbsp;&nbsp; <a name="planteoDelProblema"></a> **Planteo del problema** 

Actualmente, a partir del formulario que el profesional completa desde la página web de la entidad (Colegio de Arquitectos) puede generar un expediente. Al hacerlo, la información es enviada a un mail de la entidad y el Empleado Administrativo tiene que descargarla y separarla en distintas rutas y  archivos en su computadora.

Los profesionales sólo pueden agregar 3 tareas a un expediente, existiendo además otras, que el Empleado Administrativo debe agregar cuando es solicitado y requerido.

<br/>













## **Alcance y limitaciones**

A través del proyecto se propone desarrollar una extensión de la pagina web, que esté enfocado a la gestión de los expedientes, y que agilize la comunicación con los profesionales. 

El proyecto modificará únicamente las rutas del módulo de autogestión de los profesionales, (http://www.arquitectosmisiones.org.ar/autogestion/index.php) que, a partir del proyecto, será el acceso para la gestión de expedientes únicamente para la cuenta del Empleado Administrativo, (pantalla principal que otorgará este proyecto).  En esta misma sección, el proyecto permitirá a los profesionales ver el historial de expedientes que posean, junto con su certificado. 

<br/> 




&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<span style="text-decoration: underline">Observaciones: </span> 

La entidad requiere que la cadena de interacciones                                                    (entidad <-----> arquitecto/a <-----> propietario) mencionada en                           [«Introducción y Objetivos»](#intro) se mantenga así, por lo que el nuevo sistema se limita a comunicar al profesional. 


<br/>

El sistema se limitará a ingresar manualmente el monto de cierre del expediente, porque según ha explicado la entidad a través de su representante demasiadas variables complejiizan el desarrollo de un módulo para obtener el monto. Por lo que el sistema no automatizará esta tarea.

<br/> <br/>




## **Especificación de módulos**
<br/> 

- **Módulo de expedientes:** brinda una plataforma para el registro, tratamiento y observación de expedientes. 
- **Módulo de propietarios:** brinda una plataforma para el registro, tratamiento y observación de propietarios. 
- **Módulo de certificados:** generará certificados de tarea profesional.

<br/>

- **Módulo de notificaciones:** se encargará de notificar al profesional ciertos estados de los expedientes vía mail. Éstos son: 
- <span style="text-decoration: underline"> Caso 1 </span>: Un expediente tiene una fecha de inicio y de fin. Cuando dentro de ese lapso  no se solicita el cierre del mismo, el sistema notificará al profesional que el expediente permanece abierto, cuál es la fecha de fin y el monto para poder cerrarlo.
- <span style="text-decoration: underline"> Caso 2 </span>: Informar al profesional que se encuentra disponible la liquidación del expediente para pagar. 

<br/>

- **Módulo de informes estadisticos:** se brindará un conjunto de valores estadisticos soliticados o aprobados por la entidad.


<br/> <br/>




## **Requerimientos Funcionales**
<br/>

**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  <span style="text-decoration: underline"> RF de Expedientes: </span>**


- Crear, modificar y eliminar expedientes. La información que se almacena de cada expediente está definida en [«Introducción y Objetivos»](#intro).
- Recuperar los expedientes a través de diferentes variables, con filtros.
- Pedir confirmación ante la solicitud de borrado de expedientes. 

<!--Add Bussiness Logic Here : -->
- Se requiere poder **especificar la renuncia del profesional**, si la hubiera, dentro del expediente(puntualmente de la tarea Dirección de Obra en una obra nueva).
- Se requiere poder dar de Baja a un profesional de la tarea Dirección de Obra, cuando es solicitado ***por otro profesional*** que ha sido contratado por el propietario de la obra para ***reemplazar*** al ***profesional actual***.  



<br/> <br/>



**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  <span style="text-decoration: underline"> RF de Administración de Sistema: </span>**


- Definir un usuario Administrador, el cual posee todas las facultades para manipular las funciones. Se requiere otorgar un nombre identificador, contraseña y un mail. 
- Crear, modificar, categorizar y eliminar Usuarios, siendo posible los roles: Profesional matriculado y Empleado Administrativo. La información relevante para cada usuario será: 
nombre, apellido, dni, número de matricula (omitido para el Empleado Administrivo), contacto (email y teléfono), nombre de usuario (cuenta), contraseña y permisos otorgados en el sistema  . 
- Operar únicamente si hay un usuario que haya iniciado sesión.
- El sistema debe contar con una instancia de Login, el cual permite llevar registro de las acciones realizadas por los empleadores del sistema. También, permite cerrar la sesión del usuario.

<!--Add Bussiness Logic Here : -->
- Crear certificados  y otros documentos  abalados por la entidad inherentes de la entidad. En ellos se adjunta información tal como: nombre de la entidad, dirección, contacto (mail y/o teléfono), y su contenido.

<br/> <br/>



**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  <span style="text-decoration: underline"> RF Otros: </span>**


- Calcular, generar y mostrar **estadísticas** con relación a los diferentes conceptos del minimundo (modelo de domino) en un período seleccionado por el usuario. Los resultados deben poder desplegarse también en forma de lista y ser manipulables mediante filtros.


- Producir **informes imprimibles** para la gestión administrativa del comercio, a partir de consultas realizadas sobre los diferentes conceptos del sistema.
  

<br/> <br/>





## **Requerimientos No funcionales** 
<br/>


**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<span style="text-decoration: underline">Eficiencia: </span>**


- El sistema debe ser capaz de procesar al menos 4 transacciones por segundo.
- Toda funcionalidad del sistema y transacción de negocio debe responder al usuario en menos de 4 segundos.
- El sistema debe ser capaz de operar adecuadamente con al menos 200? usuarios con sesiones concurrentes.
- Los datos modificados en la base de datos deben ser actualizados para todos los usuarios que acceden en menos de 7 segundos.

<br/> <br/>


**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<span style="text-decoration: underline">Seguridad lógica y de datos: </span>**


- Los permisos de acceso al sistema podrán ser cambiados solamente por el administrador de acceso a datos.
- Los datos del sistema deben respaldarse cada 24 horas. Para los respaldos se puede utilizar un cloud service o ser almacenados en una localidad segura ubicada en un edificio distinto al que reside el sistema.
- Si se identifican ataques de seguridad o brecha del sistema, el mismo no continuará operando hasta ser desbloqueado por un administrador de seguridad.

<br/> <br/>

**&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<span style="text-decoration: underline">Usabilidad: </span>**


- El sistema se ejecutará en un navegador web.
- La entidad debe contar con una red local para poder utilizar el sistema en múltiples ordenadores. 
- El tiempo de aprendizaje del sistema para un usuario deberá ser menor a 4 horas.
- La tasa de errores cometidos por el usuario deberá ser menor del 1% de las transacciones totales ejecutadas en el sistema.
- El sistema debe contar con manuales de usuario estructurados adecuadamente.
- El sistema debe proporcionar mensajes de error que sean informativos y orientados a usuario final.
- El sistema debe poseer interfaces gráficas bien formadas.
- La documentación estará restringida según los roles. 
- Los valores estadísticos del sistema serán confiables a partir de 2 meses de uso del sistema.

<br/> <br/>


