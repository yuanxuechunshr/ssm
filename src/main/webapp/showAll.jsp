<%@page pageEncoding="UTF-8" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <c:forEach items="${requestScope.users}" var="user">
        ${user.id}--- ${user.username}--- ${user.name}--- ${user.password}--- ${user.sex}<br>


    </c:forEach>

</body>
</html>
