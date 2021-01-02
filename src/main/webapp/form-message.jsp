<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>

<c:url value="/processa-dados-do-form" var="linkProcessaDadosFormServlet"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Enviar Mensagem</title>
    <style type="text/css">
        body {
        height:100vh;
        }
        #content {
        align-items: center;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
        height: 100%;
        }
        form {
            margin: 0 auto;
            width: 400px;

            padding: 1em;
            border: 1px solid #CCC;
            border-radius: 1em;
        }

        form div + div {
            margin-top: 1em;
        }

        label {
            display: inline-block;
            width: 90px;
            text-align: right;
        }

        input, textarea {
            font: 1em sans-serif;

            width: 300px;
            -moz-box-sizing: border-box;
            box-sizing: border-box;

            border: 1px solid #999;
        }

        input:focus, textarea:focus {
            border-color: #000;
        }

        textarea {
            vertical-align: top;

            height: 5em;

            resize: vertical;
        }

        .button {
            padding-left: 90px;
        }
        button {
            margin-left: .5em;
        }
    </style>
</head>
<body>
<div id="content">

<form action="<c:out value="${linkProcessaDadosFormServlet}"/>" method="post">
    <div>
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" />
    </div>
    <div>
        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email" />
    </div>
    <div>
        <label for="msg">Mensagem:</label>
        <textarea id="msg" name="msg"></textarea>
    </div>
    <button type="submit" >Enviar</button>
</form>
</div>
</body>
</html>