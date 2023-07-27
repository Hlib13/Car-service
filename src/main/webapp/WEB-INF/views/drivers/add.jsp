<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<div class="main-box">
    <h1>Add driver:</h1>
<form class="user-box" method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add">
<div class="user-box">
    <input type="text" name="name" form="driver" required>
    <label>Name</label>
</div>
<div class="user-box">
    <input type="text" name="license_number" form="driver" required>
    <label>License number</label>
</div>
<div class="user-box">
    <input type="text" name="login" form="driver" required>
    <label>Login</label>
</div>
<div class="user-box">
    <input type="password" name="password" form="driver" required>
    <label>Password</label>
</div>
<button type="submit" name="add" form="driver">
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    Register
</button>
</form>
</div>
</body>
</html>
