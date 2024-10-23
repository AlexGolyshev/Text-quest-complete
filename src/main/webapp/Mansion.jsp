<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Битва?</title>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <link href="static/main.css" rel="stylesheet">

    <script src="<c:url value="/jquery-3.6.0.min.js"/>"></script>
</head>
<style>
    p {
        font-family: Arial;
        font-size: 30px;
    }

    h1 {
        font-family: "Arial Black";
        font-size: 50px;
        text-align: center;
    }

    button {
        font-family: Arial;
        font-size: 30px;
        margin-left: 30px;
    }

</style>

<body>


<h1>Ой, что-то пошло не так!</h1>

<p>Квест, который вы пытаетесь начать, находится в разработке.</p>
<p>Чтобы сыграть в него, возвращайтесь позже.</p>


<button onclick="window.location='index.jsp'">На главную</button>




</body>
</html>