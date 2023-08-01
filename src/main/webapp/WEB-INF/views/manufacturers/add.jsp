<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<div class="main-box">
<form class="user-box" method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add">
<h1>Add manufacturer:</h1>
    <div class="user-box">
        <input type="text" name="name" form="manufacturer" required>
        <label>NAME</label>
    </div>
    <div class="user-box">
        <input type="text" name="country" form="manufacturer" required>
        <label>COUNTRY</label>
    </div>
    <button type="submit" name="add" form="manufacturer">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        ADD
    </button>
</form>
</div>
</body>
</html>
