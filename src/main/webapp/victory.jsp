<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Триумф</title>

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


<h1>Триумф</h1>

<p>Монстр с диким ревом бросается прямо на тебя, но не тут-то было: в руках у тебя появляется револьвер, заряженный серебряными пулями. Всего пара выстрелов в сердце, и противник падает замертво.</p>
<p>Где ты научился так метко стрелять и почему не испытал панического страха, как остальные в толпе? Нутро подсказывает, что тебе не впервой сражаться с подобными тварями.</p>
<p>Но сколько еще их бродит по окрестностям? Хватит ли у тебя патронов, чтобы прикончить всех? И почему укус на предплечье нестерпимо пульсирует в свете полной луны?</p>
<p>Невдалеке виднеется большое здание городского музея. Один взгляд на него заставляет тебя вспомнить, что внутри находится нечто важное, способное пролить свет на твое прошлое.</p>
<p>Недолго думая, ты решаешь отправиться в музей и узнать, поможет ли это вернуть тебе память.</p>


<button onclick="window.location='museum.jsp'">Идти в музей</button>


</body>
</html>
