<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shaba
  Date: 27.07.2022
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car table</title>
</head>
<body>
<table>
    <tr>
        <th>Номер в списке</th>
        <th>Марка</th>
        <th>Модель</th>
        <th>Тип</th>
        <th>Лошадиные силы</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <c:url var="updateButton" value="/updateCar">
                    <c:param name="id" value="${car.id}"></c:param>
            </c:url>

            <c:url var="deleteButton" value="/deleteCar">
                <c:param name="id" value="${car.id}"></c:param>
            </c:url>
        <td>${car.id}</td>
        <td>${car.name}</td>
        <td>${car.model}</td>
        <td>${car.type}</td>
        <td>${car.horsePowers}</td>
            <td>
                <input type="button" value="Изменить"
                       onclick="window.location.href = '${updateButton}'">
                <input type="button" value="Удалить"
                       onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
</table>
<br><br>

<input type="button" value="Добавить" onclick="window.location.href = 'add'"/>
</body>
</html>
