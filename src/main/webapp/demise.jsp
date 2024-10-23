<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Еще одна жертва</title>

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


<h1>Еще одна жертва</h1>

<p>Схватка с оборотнем - дело не из легких. Откуда-то из глубин памяти вдруг всплывает подсказка: убить зверя можно только серебряным острым оружием. Иначе его раны мгновенно зарастут.</p>
<p>Как жаль, что при себе у тебя нет ничего подходящего под эти критерии. Без правильного оружия против оборотня у тебя ни шанса. Ты видишь блеск кривых когтей, голодный оскал, после чего с безумной болью в области горла тебе приходит</p>
<hr>
<p style="font-family: 'Arial Black'; font-size: 40px; text-align: center">КОНЕЦ</p>

<button onclick="window.location='index.jsp'">На главную</button>




</body>
</html>
