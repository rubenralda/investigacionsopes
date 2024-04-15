# Completely Fair Scheduler (CFS) 
Es un algoritmo de planificación de procesos utilizado en el kernel de Linux desde la versión 2.6.23. Su objetivo principal es asignar el tiempo de CPU de manera justa entre los diferentes procesos en ejecución en el sistema.

1. Justicia: El CFS busca proporcionar una distribución equitativa del tiempo de CPU entre todos los procesos en ejecución. No favorece a ningún proceso sobre otro, lo que significa que ningún proceso puede monopolizar la CPU indefinidamente.

2. Modelo de tiempo virtual: En lugar de usar una noción de "tiempo real" o "prioridades estáticas", el CFS utiliza un modelo de tiempo virtual. Cada proceso tiene asignado un valor de tiempo virtual que indica cuánto tiempo debería haber utilizado la CPU en relación con otros procesos en ejecución. Este valor se actualiza dinámicamente según el tiempo real de CPU utilizado por el proceso.

3. Calculo de tiempo de ejecución: El CFS realiza un seguimiento del tiempo de ejecución real de cada proceso. Cuando un proceso se ejecuta, su valor de tiempo virtual se incrementa según el tiempo de CPU utilizado. Luego, el proceso con el menor valor de tiempo virtual se selecciona para ejecución, lo que garantiza una distribución equitativa del tiempo de CPU.

4. Estructuras de datos: El CFS utiliza una estructura de datos denominada "red-black tree" (árbol rojo-negro) para mantener un seguimiento eficiente de los procesos en ejecución y sus valores de tiempo virtual. Esto permite una búsqueda rápida del próximo proceso a ejecutar.

5. Prioridades dinámicas: Aunque el CFS no asigna prioridades estáticas a los procesos, aún permite que los procesos indiquen su "niceness" (nivel de prioridad relativa) mediante la llamada al sistema `nice()`. Sin embargo, esta prioridad no interfiere directamente en el funcionamiento del CFS; simplemente afecta la velocidad a la que el proceso puede acumular tiempo de CPU.