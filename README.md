# Banco de Dados - Trabalho 3

### Criação do container docker
Criação da imagem do conteiner
´´´
docker build . -t tp3-image-bdm
´´´

Criação e start do conteiner

´´´
docker run --name tp3_bruno-daniel-marcelly -p 5432:5432 -td tp3-image-bdm
´´´