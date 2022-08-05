<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: shaba
  Date: 27.07.2022
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h2>Добавить новую точилу</h2>
<form:form action="/saveCar" modelAttribute="car">
    <form:hidden path="id"></form:hidden>
    Марка<form:input path="name"></form:input>
    <br><br>
    Модель<form:input path="model"></form:input>
    <br><br>
    Тип<form:select path="type">
    <form:option value="city" label="city"></form:option>
    <form:option value="electro" label="electro"></form:option>
    <form:option value="sport" label="sport"></form:option>
    <form:option value="off_road" label="off_road"></form:option>
    <form:option value="luxe" label="luxe"></form:option>
    <br><br>
</form:select>
    Лошадки<form:input path="horsePowers"></form:input>
    <br><br>
    <input type="submit" value="Добавить">
</form:form>
</body>
</html>
