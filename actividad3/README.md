## Proceso de instalacion

1. Copiar el archivo `saludo.service` en el directorio `/etc/systemd/system/`.

2. Ejecutar el siguiente comando para habilitar el servicio:
   
~~~bash
sudo systemctl daemon-reload
sudo systemctl enable saludo.service
~~~

## Ver logs
~~~bash
sudo systemctl status saludo.service
~~~