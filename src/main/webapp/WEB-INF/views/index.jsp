<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="/css/styles.css" rel="stylesheet">
</head>
<body>
<div class="main-box">
    <h1>Hello, mates</h1>
<form class="user-box">
    <a href="${pageContext.request.contextPath}/login">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Login
    </a>
    <a  href="${pageContext.request.contextPath}/logout">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Logout
    </a>
    <a href="${pageContext.request.contextPath}/drivers/add">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Create new Driver
    </a>
    <a href="${pageContext.request.contextPath}/drivers">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Display All Drivers
    </a>
    <a href="${pageContext.request.contextPath}/cars">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Display All Cars
    </a>

    <a href="${pageContext.request.contextPath}/manufacturers">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Display All Manufacturers
    </a>
    <a href="${pageContext.request.contextPath}/cars/add">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Create new Car
    </a>
    <a href="${pageContext.request.contextPath}/manufacturers/add">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Create new Manufacturer
    </a>
    <a href="${pageContext.request.contextPath}/cars/drivers/add">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Add Driver to Car
    </a>
</table>
    </form>
</div>
</body>
</html>
