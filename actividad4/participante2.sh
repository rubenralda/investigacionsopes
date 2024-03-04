#!/bin/bash

send_message() {
    echo "$1" > participante1
}

while true; do
    read message
    echo "Participante 1: $message"
done < participante2
