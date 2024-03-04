#!/bin/bash

send_message() {
    echo "$1" > participante2
}

while true; do
    read message
    echo "Participante 2: $message"
done < participante1
