# Usando uma imagem base do OpenJDK
FROM openjdk:17-jdk-slim

# Definindo o diretório de trabalho dentro do container
WORKDIR /app

# Copiando o arquivo JAR para o diretório de trabalho
COPY build/libs/lubvel.jar app.jar

# Comando para rodar a aplicação
ENTRYPOINT ["java","-jar","app.jar"]
