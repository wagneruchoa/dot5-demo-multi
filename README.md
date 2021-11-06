# dot5-demo-multi
Aplicação básica de usa recurso de multi do Dockerfile para recompilar todo o projeto e coloca-lo numa imagem enxuta.
roda direto com dotnet run no host gera link link:https://localhost:5001/, a aplicação roda na porta 80, dentro da imagem. Exemplo geração no docker:$ docker build -t dot5-demo-multi:1.0 . --> Checa a sintaxe e gera a imagem. 

Comandos:
$ docker create --name dot5-demo-multi-app -p 80:80 dot5-demo-multi:1.0  --> Cria o container mas sem iniciá-lo.
$ docker start dot5-demo-multi-app  --> inicia o container

$ docker run -it --name dot5-demo-multi-app -p 80:80 dot5-demo-multi:1.0 --> Fica com o terminal aberto bom pra debugar.
$ docker run -d --name dot5-demo-multi-app -p 80:80 dot5-demo-multi:1.0  --> Faz a aplicação rodar em background.
$ docker logs dot5-demo-multi-app  --> ver logs.
