# JavaTestServlet
Este projeto tem o intuito de exemplificar o uso de Java Servlet. Também foi utilizado o plugin dockerfile-maven-plugin, que facilita a criação de imagens Docker.
Este projeto foi uma forma de fixar conhecimento e gerar material para consulta.
 

```
.
├── Dockerfile
├── Dockerfile-Spring
├── README.md
├── pom.xml
└── src
    └── main
        ├── java
        │   ├── DemoServlet.java
        │   ├── FormMessageServlet.java
        │   └── ProcessDataFormServlet.java
        └── webapp
            ├── WEB-INF
            │   └── web.xml
            ├── form-message.jsp
            └── show-email.jsp
```

##### Dockerfile
Arquivo utilizado pelo Maven para gerar a imagem docker com a aplicação

##### pom.xml
Contém as configuraçãoes para compilar o app, é usado pelo Maven para realizar o build

##### DemoServlet.java
Esse servlet foi utilizado como modelo para criação dos demais, pois foi utilizado InteliJ Idea CE, que não suporta Java EE

##### FormMessageServlet.java
Esse servlet abre um formulário simples que está no *form-message.jsp*

##### ProcessDataFormServlet.java
Esse servlet recebe os dados do formulário em *form-message.jsp* e os envia para *show-email.jsp*, neste ponto poderia ser empregado uso de banco de dados, mas nesse projeto foi utilizado persistência de dados.

##### web.xml
Arquivo de configuração dos servlets, porem neste projeto não foi utilizado

##### form-message.jsp
Contém o formulário de mensagem

##### show-email.jsp
Exibe os dados preenchidos no formulário

##### Gerar arquivo war
```
$mvn package
```
Isso faz gerar o arquivo JavaTesteServlet/target/JavaTestServlet.war

##### Docker
O projeto usa o plugin dockerfile-maven-plugin, que facilita a criação da imagem docker, para criar a imagem:
```
$mvn dockerfile:build
```

No arquivo Dockerfile o processo de cópia do arquivo war renomeia o arquivo *JavaTestServlet.war* para *testservilet.war*. A imagem pode ser executada da seguinte forma: 
```
$docker run -p 8080:8080 java-test-servelet:1.0-SNAPSHOT
```
O projeto estará disponível na url: http://localhost:8080/testservilet