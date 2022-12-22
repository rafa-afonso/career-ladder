#!/bin/bash

# Script para selecionar o .env correto no docker compose
# Exemplo de uso: ./docker-compose-env.sh up --build -d

# Nota: Para a execução Native o --build deve ser feito a parte
# Build Native: mvn -Pnative spring-boot:build-image

ENV_VAR=.env.dev
# ENV_VAR=.env.stage
# ENV_VAR=.env.prod

COMPOSE_PATH=docker-compose.yml
# COMPOSE_PATH=docker-compose-native.yml

COMMAND="docker compose -f $COMPOSE_PATH --env-file ./environment/$ENV_VAR"
$COMMAND "$@"
