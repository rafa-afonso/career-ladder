#!/bin/bash

# Script para selecionar o .env correto no docker compose
# Exemplo de uso: ./docker-compose-env.sh up --build -d

# CONFIG=.env.dev
# CONFIG=.env.stage
CONFIG=.env.prod

COMMAND="docker compose --env-file ./environment/$CONFIG"
$COMMAND "$@"
