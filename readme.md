# Índice

- [Execução](#execução)
    - [Execução via docker](#execução-via-docker)
        - [Build comum](#build-comum)
        - [Build Native AOT](#build-native-aot)

# Execução

## Execução via docker

### Build comum

Para executar o build normal, basta usar o script assitencial `docker-compose-env.sh`

1. Edite o script para usar o `.env` e `docker-compose` de sua escolha
    1.
        1. No caso, use o `docker-compose.yml`
2. Chame a execução do script no terminal passando os parâmetros que complementam o comando do `docker compose`
    1. Isso garante a flexibilidade do comando `docker compose` original
    2. Exemplo de uso: `$ bash ./docker-compose-env.sh up --build -d`

### Build Native AOT

Para executar o build via Spring Native com Ahead of Time:

1. Execute o comando na raiz do projeto: `mvn -Pnative spring-boot:build-image`
    1. Isso irá iniciar o processo de build que deve durar entre 5 e 10 minutos
2. Após terminado, use o script de assitência de `docker compose` fazendo uso do `.env` e `docker-compose` apropriados.
    1. No caso, use o `docker-compose-native.yml`
