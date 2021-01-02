<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>

<c:url value="/" var="linkFormEmailServlet"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Enviar Mensagem</title>
    <style type="text/css">

    </style>
</head>
<body>

<div id="content">
    <div>Nome: <c:out value="${nome}"/></div>
    <div>E-mail: <c:out value="${email}"/></div>
    <div>Mensagem: <c:out value="${msg}"/></div>
    <a href="<c:out value="${linkFormEmailServlet}"/>">Retorna</a>
</div>
</body>
</html>