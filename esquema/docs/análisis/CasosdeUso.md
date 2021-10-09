


## Casos de Uso



### Liquidar registro de expediente
PRECONDINCION: se han entregado todos los datos requeridos del expediente.  
ENTRADA: el id del expediente para liquidar.

Descripcion: El caso de uso comienza cuando el Empleado Administrativo debe liquidar el registro de un expediente. Esto pone el monto que debe pagar el propietario para cerrar el mismo.
El sistema responde con el módulo automatizado <<link>> que se encarga de interactuar con el profesional y del seguimiento del caso de uso en pos de que se concrete el cierre del expediente, que es el final del ciclo de vida del mismo.

SALIDA: Se cede el control al módulo automatizado.
POSTCONDICION: Cambia la condición del expediente a << A la espera de Carga de Comprobante de Pago; sin confirmación del profesional de que ha  enviado los datos al propietario para que realice el pago. >>
<br/> <br/>






### Cerrar expediente

&emsp;    Cuando el Empleado Administrativo cierra un expediente, el sistema además de cambiar el estado del expediente a 'cerrado', llama al módulo automatizado <<link>>



<br/>










###  Solicitar Reemplazo de Profesional en Direccion de Obra


&emsp;    **Datos de entrada**: el profesional debe poseer/conocer: 
- los datos del propietario (véase en <<link>>) que registra en el sistema o bien lo puede seleccionar de la lista,
- datos del profesional a reemplazar <<link>> (que le deben ser administrados por el propietario: ) 
- la referencia catastral de la obra <<link>>, 
- y el/los numero/s de partida/s inmobiliaria/s corrrespondientes a la obra.

<b>NOTA</b>: Quien solicita no necesita ver el expediente del profesional por reemplazar, ni seleccionar la obra en cuestión.
Los datos de entrada bastan para referenciar correctamente todo.

&emsp;    El caso de uso comienza cuando el profesional hace click en una sección del menú de la interfaz para solicitar el Reemplazo. 
Debe ingresar los datos mencionados y una vez confirme 'LISTO',
entra en acción el modulo automatizado <<link>>  que entre sus tareas  genera la [Nota de Reemplazo Profesional](#notaReemplazoProfesional), nombre seleccionado para referenciar dicha nota que tiene caracter de documento dentro del dominio de la entidad.
Luego el profesional podrá descargar la Nota generada y termina el caso de uso.

 

&emsp;    Salida: La nota de Reemplazo Profesional con los datos de entrada adjuntos en ella.
&emsp;    NOTA: El profesional debe esperar la evaluación de la Nota por parte del Empleado Administrativo.
&emsp;    NOTA: Este caso de uso solo se puede producir con una obra que  

<br/> <br/>





### Cargar Nota de Reemplazo Profesional firmada

Datos de entrada: la nota (en formato pdf)

Este caso de uso comienza cuando el profesional desea cargar la Nota de Reemplazo Profesional con su firma y la del propietario.

Salida: Mensaje de "Nota cargada con éxito", o de "Formato no aceptable".



### Evaluar Solicitud de Reemplazo Profesional

Este caso de uso comienza cuando el Empleado Administrativo accede (a través de una notificación o ¿en la vista del expediente en cuestión?)
a una Nota de Reemplazo Profesional. 
Debe evaluar si la información es feaciente y determinar si la aprueba o desaprueba.
El caso de uso se extiende, según sea el caso, a  *Aprobar solicitud Reemplazo en Direccion de Obra* o *Desaprobar solicitud Reemplazo en Direccion de Obra*.
<br/> <br/>


### Aprobar solicitud Reemplazo en Direccion de Obra


Si el empleado Administrativo aprueba la nota, se llama al Modulo Automatizado 3 *Interacción por Reemplazo de Profesional en Dirección de Obra*<<link>>  
<br/>

&emsp;    Salida: No hay salida.
&emsp;    Postcondicion: Cambios efectuados por el modulo automatizado. 

<br/> <br/>









### Desaprobar solicitud Reemplazo en Direccion de Obra

<pre>
	Entrada: los datos de salida de Solicitar Reemplazo en Direccion de Obra

	cuando empleado Adm reciba la solicitud define si continua el flujo .
Si NO da el OK, la nota es guardada en la tabla Notas de Reemplazo y se termina el caso de uso. 



	Tabla Notas de Reemplazo: 
	id: 
	idexp (FK)
	estado?/tipo? : aprobado o desaprado

	Salida: Ninguna.
	Postcondicion: Nueva fila en tabla Notas de Reemplazo

</pre>
<br/> <br/>





### Módulo Automatizado 1: Interacción con el profesional para cerrar el expediente

Este módulo realizará varias tareas. Una vez que el Empleado Administrativo ha liquidado el registro de un expediente, automáticamente le será enviada una [notificación](#notificaciones)  al profesional. En ella se incluirá el monto a pagar y los medios de pagos. 
En el escenario en particular, el deber de realizar el pago le corresponde al propietario. 
Por eso, en la notificación al profesional se pide una confirmación de que los datos para realizar el pago han sido enviados al propietario . Si se realiza el pago termina el módulo, y otro módulo del sistema se hace cargo de lo que prosigue. 
O, si pasados 7 días no se ha realizado el pago, se enviará otra notificación a modo de recordatorio al profesional. Y a los 20 días, una interacción le preguntará que desea hacer con la situación del expediente. Para conocer las opciones, redimirse al Diagrama de Casos de usos del Proyecto. 












### Módulo Automatizado 2: Generar certificados

Cuando el Empleado Administrativo cierra un expediente, el sistema además de cambiar el estado del expediente a 'cerrado', llama a este módulo automatizado, que notificará y esperará la confirmación de visto del profesional generará un certificado que constata y abala la información que reside en el expediente.
El profesional podrá encontrarlo, descargarlo e imprimirlo desde la vista del expediente en cuestión.






















### Módulo Automatizado 3: Interacción por Reemplazo de Profesional en Dirección de Obra

Tras ser aprobada una Nota de Reemplazo de Profesional, este módulo realizará los cambios en el expediente 1, el existente ( quitando la Dirección de Obra al profesional 1 y añadiendo que se dió de baja al profesional en la tarea por Reemplazo de Profesional) y abrirá un expediente 2 para el profesional 2 con los datos que ya ha sumunistrado en la solicitud (propietario, profesional a reemplazar, datos catastrales y partida/s inmobiliaria/s de la obra).
Este expediente(2) contendrá unicamente la tarea Dirección de Obra. Cuando sea requerido, este profesional (2) podrá agregar más tareas desde el caso de uso Modificar Expediente.
Además, notificará a ambos profesionales de que se ha llevado a cabo con éxito el Reemplazo Profesional.

si, en cambio, ha sido desaprobada la nota de Reemplazo Profesional,  
entonces comunicará el fallo al profesional que lo solicitó y esperará una confirmación de visto.


&emsp;  NOTA: Los expedientes involucrados tendrán constatado el evento. En la tabla Notas de Reemplazo se guarda esta Instancia de Nota en una fila y una columna(IdExpediente) referencia a este expediente.
Se buscará crear una referencia del otro y que ambos expedientes se conozcan.
&emsp;  NOTA: Los expedientes que registran más de una tarea y se ven afectados por la baja del profesional en Direccion de Obra, continuan registrando las demás tareas.



