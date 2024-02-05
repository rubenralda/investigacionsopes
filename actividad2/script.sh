#!/bin/bash
GITHUB_USER="rubenralda"

API_RESPONSE=$(curl -s "https://api.github.com/users/$GITHUB_USER")

# Extraer los datos del JSON
USER_ID=$(echo "$API_RESPONSE" | jq -r '.id')
CREATED_AT=$(echo "$API_RESPONSE" | jq -r '.created_at')

MESSAGE="Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

DATE=$(date +"%Y-%m-%d")

LOG_DIR="/tmp/$DATE"
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/saludos.log"
echo "$MESSAGE" >> "$LOG_FILE"

echo "Script terminado"

