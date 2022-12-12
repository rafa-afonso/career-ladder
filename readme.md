# Execução

## Execução via docker

### Build comum

Para executar o build normal, basta usar o script assitencial `docker-compose-env.sh`

1. Edite o script para usar o .env e docker-compose de sua escolha
2. Chame a execução do script no terminal passando os parâmetros que complementam o comando do `docker compose`
    1. Isso garante a flexibilidade do comando `docker compose` original
    2. Exemplo de uso: `$ bash ./docker-compose-env.sh up --build -d`
