<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Пробуждение</title>

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


<h1>Продавец кошмаров</h1>

<p>Приветствую тебя, дорогой посетитель! Желаешь пощекотать нервишки? Тогда наше заведение к твоим услугам!</p>
<p>Здесь мы торгуем кошмарными сновидениями. С помощью гениального изобретения моего коллеги, доктора Морфея, ты сможешь пережить поистине леденящие душу события.</p>
<p>Устраивайся поудобнее в кресле и надень этот шлем на голову. Уверяю, это абсолютно безопасно.</p>
<p>Теперь дело за малым: выбрать, в какую из жутких историй ты решишь окунуться.</p>


<button onclick="fullMoon()">Зов полной луны</button>
<button onclick="window.location='Transylvania.jsp'">Однажды в Трансильвании</button>
<button onclick="window.location='Mansion.jsp'">Проклятый особняк</button>


<script>
    function fullMoon() {
        $.ajax({
            url: '/start',
            type: 'GET',
            contentType: 'application/json;charset=UTF-8',
            async: false,
            success: function () {
                window.location = 'awakening.jsp';
            }
        });
    }
</script>

</body>
</html>
