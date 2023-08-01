<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add car</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="/css/styles.css" rel="stylesheet">
</head>
<body>
<div class="main-box">
    <h1>Add car:</h1>
<form class="user-box" method="post" id="car" action="${pageContext.request.contextPath}/cars/add">
    <div class="user-box">
        <input type="text" name="model" form="car" required>
        <label>Model</label>
    </div>
    <div class="user-box">
        <input type="text" name="manufacturer_id" form="car" required>
        <label>Manufacturer ID</label>
    </div>
    <button type="submit" name="add" form="car">
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
