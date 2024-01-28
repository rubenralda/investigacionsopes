# Tipos de Kernel y sus diferencias
## Esenciales
1.	Kernel monolítico: es un Kernel de gran tamaño que puede gestionar todas las tareas. Se encarga de la gestión de memoria y procesos, así como de la comunicación entre los procesos y el soporte de las diferentes funciones de los drivers y el hardware. Los sistemas operativos que recurren al Kernel monolítico son Linux, OS X y Windows.
2.	Microkernel: los Kernel que están diseñados con pequeños tamaños tienen una clara función: evitar el colapso total del sistema en caso de un fallo. Para cumplir con todas las tareas como un Kernel monolítico cuenta con diferentes módulos. Es curioso, pero hasta ahora solo el Mach de OS X es el único que utiliza el microkernel.
3.	Kernel híbrido: combinación entre el microkernel y el Kernel monolítico. Nos encontramos ante un Kernel grande, pero compacto y que puede ser modulado y otras partes de este Kernel pueden cargarse de manera dinámica. Es utilizado en Linux y OS X. 
## No esenciales
1.	Nanokernel: si el microernel es pequeño, este es todavía más reducido, pero su uso está destinado a sistemas embebidos ya que el nivel de fiabilidad es mayor. 
2.	Exokernel: la estructura que propone un exokernel es innovadora ya que se estructura de manera vertical. Los núcleos son pequeños y su desarrollo tiene fines investigativos. En un exokernel la toma de decisiones está a cargo de los programas, para hacer el uso de los recursos del hardware en ciertas bibliotecas. El Kernel se limita a evitar errores en los permisos de hardware y eludir conflictos.
3.	Unikernel: es un Kernel destinado a la eliminación de capas intermedias entre el hardware y las aplicaciones, ya que busca simplificar lo más posible todos los procesos. Es habitual en dispositivos de bajo consumo como los IoT.
4.	Anykernel: otro concepto innovador que busca conservar las cualidades de los Kernel monolíticos, pero también facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario. 
# User vs Kernel Mode
## Modo de usuario
Al iniciar una aplicación en modo de usuario, Windows crea un proceso para ella. Este proceso proporciona a la aplicación un espacio de direcciones virtuales privado y una tabla de identificadores privada. Dado que el espacio de direcciones virtuales de cada aplicación es privado, una aplicación no puede modificar los datos de otra aplicación. Cada aplicación se ejecuta de forma aislada, lo que garantiza que, si una se bloquea, no afecte a otras aplicaciones ni al sistema operativo.

El espacio de direcciones virtuales de una aplicación en modo de usuario también es limitado. Un proceso que se ejecuta en modo de usuario no puede acceder a las direcciones virtuales reservadas para el sistema operativo. Limitar el espacio de direcciones virtuales de una aplicación en modo de usuario evita que la aplicación modifique o dañe los datos críticos del sistema operativo.
## Modo kernel
Todo el código que se ejecuta en modo kernel comparte un único espacio de direcciones virtuales. Como resultado, un controlador en modo kernel no está aislado de otros controladores o del sistema operativo. Si un controlador en modo kernel escribe por error en la dirección virtual incorrecta, podría poner en peligro los datos que pertenecen al sistema operativo o a otro controlador. Si un controlador en modo kernel se bloquea, hace que todo el sistema operativo se bloquee.

# Trampa vs interrumpir
La trampa es una señal emitida por un programa de usuario que indica al sistema operativo que realice alguna funcionalidad de inmediato. La interrupción es una señal a la CPU emitida por el hardware que indica un evento que requiere atención inmediata.
Es un proceso sincrónico. Es un proceso asincrónico.
Todas las trampas se interrumpen. No todas las interrupciones son trampas.
Puede suceder solo desde los dispositivos de software.	Puede suceder desde los dispositivos de hardware y software.
Una instrucción de programa de usuario lo genera.	Los dispositivos de hardware lo generan.
También se conoce como interrupción de software.	También se conoce como interrupción de hardware.
Ejecuta la funcionalidad específica en el sistema operativo y da control al controlador de capturas.	Obliga a la CPU a activar una rutina específica de controlador de interrupciones.
