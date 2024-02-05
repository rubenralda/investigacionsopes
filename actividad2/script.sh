#!/bin/bash

# Leer la variable GITHUB_USER
GITHUB_USER="tu_usuario_de_GitHub"

# Consultar la URL y guardar la respuesta en una variable
API_RESPONSE=$(curl -s "https://api.github.com/users/$GITHUB_USER")

# Extraer los datos del JSON
USER_ID=$(echo "$API_RESPONSE" | jq -r '.id')
CREATED_AT=$(echo "$API_RESPONSE" | jq -r '.created_at')

# Crear el mensaje de saludo
MESSAGE="Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

# Obtener la fecha actual
DATE=$(date +"%Y-%m-%d")

# Crear el directorio de logs si no existe
LOG_DIR="/tmp/$DATE"
mkdir -p "$LOG_DIR"

# Crear el archivo de log con el mensaje
LOG_FILE="$LOG_DIR/saludos.log"
echo "$MESSAGE" >> "$LOG_FILE"

# Mensaje de confirmación
echo "Mensaje guardado en $LOG_FILE"

