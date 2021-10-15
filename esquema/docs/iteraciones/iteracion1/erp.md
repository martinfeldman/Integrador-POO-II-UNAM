<strong>*NOTA: Se mantiene sin cambios con respecto a la iteración 0*</strong>

# ***Sistema de gestión de expedientes para la entidad  administrativa Colegio de Arquitectos de Misiones***

<br/> 


##  Especificación de requisitos de software


#### &nbsp;&nbsp; &nbsp;&nbsp; <a name="planteoDelProblema"></a> **Planteo del problema** 

Actualmente, a partir del formulario que el profesional completa desde la página web de la entidad (Colegio de Arquitectos) puede generar un expediente. Al hacerlo, la información es enviada a un mail de la entidad y el Empleado Administrativo tiene que descargarla y separarla en distintas rutas y  archivos en su computadora.

Los profesionales sólo pueden agregar 3 tareas a un expediente, existiendo además otras, que el Empleado Administrativo debe agregar cuando es solicitado y requerido.

<br/>




#### &nbsp;&nbsp; &nbsp;&nbsp; Clientes potenciales

<!--¿Quiénes están afectados por este problema y se beneficiarían de la solución propuesta? (es decir, los usuarios potenciales del software que están por construir). -->

El software puede ser útil para cualquier entidad que entre sus tareas tenga la gestión de expedientes y necesite interactuar por cuestiones relevantes sobre los mismos con profesionales, que son quienes abren los expedientes. 
Con algunas modificaciones el producto software podría ser implementado en otros Colegios que llevan tareas semejantes.
Hasta el momento se conoce que el Colegio de Ingenieros y el Colegio de Agrimentores trabajan con tareas y expedientes.
<br/>




#### &nbsp;&nbsp; &nbsp;&nbsp; Solución propuesta

<!-- Escriban algunas oraciones que describan cómo la solución de software resolverá el problema descrito anteriormente. -->

La solución de software propuesta es una plataforma web que  permitirá al Empleado Administrativo y a los profesionales encontrar la información pertinente a los expedientes en un mismo lugar. (El profesional sólo tiene acceso a sus expedientes personales).
Asimismo, podrán gestionarlos de manera eficaz y sencilla. 
Significará una transición de expedientes fisicos a expedientes digitales que permitirá desligará al Empleado Administrativo de la tarea de abrirlos, aunque también podrá hacerlo, ya que podría ser necesario eventualmente. 

Tambień, permitirá realizar las acciones propias del entorno, como ser: 
- Solicitar Reemplazo de Profesional en tarea Dirección de Obra,
- acceder al certificado del expediente.


</br> </br>
 
#### **Requisitos funcionales:**
  <!-- Enumeren los requisitos (funcionales) que debe tener el software para resolver el problema mencionado anteriormente. Es útil tratar de agrupar los requisitos en los que son esenciales (debe estar) y los que no son esenciales (sería bueno que estén). -->
<br/>


Como Administrador del Sistema quiero poder: 
- ver la información de los usuarios registrados actualmente en el sistema.
- dar de baja a un usuario, para que no pueda interactuar con el sistema o ya no deba hacerlo.
- modificar un usuario, para actualizar el nombre, apellido, número de documento y número de matricula, según sea necesario.


</br> </br>

Tanto Empleado Administrativo como Profesionales deben poder: 

- registrarse como usuarios. Ingresando  nombre, apellido, número de documento. En el caso del profesional, también número de matrícula y email, que servirá como método de comunicación además de las notificaciones dentro del sistema.

- logear como usuarios.

- abrir un expediente, con su número de expediente, profesional, propietario, fechas, estado, planos correspondientes y las tareas que se llevaron a cabo, etc. 

- descargar planos de un expediente, (en el caso del profesional, sólo aquellos propios).

- descargar certificado de expediente, (en el caso del profesional, sólo aquellos propios). Cuenta con el abal de la entidad a través de un QR que dirige a una página accesible públicamente que constata la veracidad del certificado.

- imprimir certificado de expediente, (en el caso del profesional, sólo aquellos propios).

- ver notificaciones.


</br> </br>


Como Empleado Administrativo quiero poder: 

- definir el valor de partida de los expedientes, al ejecutar por primera vez el sistema. Esto es necesario ya que existen actualmente expedientes en la entidad, 

- recuperar y eliminar propietarios. Eliminar propietarios es solo necesario si se cargó algo sin sentido,

- abrir un expediente, que equivale a aprobar un formulario completado por el profesional, 

- ver tanto individualmente como el conjunto de expedientes, con su información.

- liquidar un expediente, especificando el monto que debe abonar el propietario para habilitar el próximo paso, que es cerrar el expediente.

- cerrar expedientes,

- aprobar Notas de Reemplazo Profesional,

- desaprobar Notas de Reemplazo Profesional,

- generar informes con facilidad, seleccionando el objeto del informe, pudiendo restringir el intervalo de tiempo que se considera para el informe,

- imprimir informes, 

- descargar informes,

- hacer consulta Estadistica, seleccionando el objeto de interés, pudiendo restringir el intervalo de tiempo que se considera en la consulta.





</br> </br>


Como profesional quiero poder: 

- completar un formulario para que, con la aprobación del Empleado Administrativo se abra, se registre.

- registrar y modificar propietarios, ingresando: si es persona fisica: nombre, apellido, cuit; 
si es persona jurídica: razon social, cuit.

- ver expedientes propios,

- modificar de un expediente propio: los datos catastrales, partida/s inmobiliarias, la tipologia, el objeto y las tareas. 
El profesional tiene tiempo podrá realizar esta acción unicamente hasta que el Empleado Administrativo abra el expediente  

- cargar comprobante de pago,

- renunciar a la direccion de Obra de una Obra,

- descargar Nota de Reemplazo Profesional, luego de que haya sido generado por el sistema,

- cargar Nota de Reemplazo Profesional firmada. 


</br> </br>



#### &emsp;&emsp;  Seria bueno que: 

- El profesional pueda descargar el acervo profesional, que es un documento con abal de la entidad en el que se constatan todos los certificados que posea.  


</br> </br>

#### &emsp;&emsp;  Arquitectura de software

<!-- ¿Será esta una aplicación web / de escritorio / móvil (todas o algún otro tipo)? ¿Se ajustaría a la arquitectura de software Cliente-Servidor? -->

Aplicacion web, con arquitectura Cliente-Servidor.


<br/>
