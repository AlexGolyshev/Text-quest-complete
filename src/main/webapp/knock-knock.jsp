<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Тук-тук</title>

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


<h1>Тук-тук</h1>

<p>С первого этажа доносятся глухие удары.</p>
<p>Ты выходишь из спальни, спускаешься по лестнице на первый этаж и понимаешь, что кто-то изо всех сил стучит во входную дверь.</p>
<p>Ты решаешь узнать, кто это.</p>


<button onclick="window.location='stranger.jsp'">Открыть дверь</button>



</body>
</html>
