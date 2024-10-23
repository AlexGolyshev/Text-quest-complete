<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Поиск без результатов</title>

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


<h1>Поиск без результатов</h1>

<p>Потратив изрядное время на поиски, среди всех экспонатов ты так и не смог подобрать ничего подходящего. Большинство оружия ближнего боя либо слишком тяжелое, либо не выглядит эффективным против проворных оборотней.</p>
<p>К тому же, у тебя уже имеется револьвер с серебряными пулями, которым ты уже сумел одолеть оборотня. Альфа-оборотень суть то же самое, значит, и против него револьвер, скорее всего, сработает.</p>
<p>В любом случае, поиски без знания конкретной вещи и ее местоположения только отнимают время, а ночь полнолуния не бесконечна. Чутье подсказывает тебе, что ты можешь упустить врага, и тогда все пропало.</p>
<p>Поэтому ты решаешь немедленно отправиться в логово вожака.</p>



<button onclick="window.location='alpha.jsp'">Отправиться в логово альфа-оборотня</button>

<script>
    function takeDagger() {
        $.ajax({
            url: '/dagger',
            type: 'GET',
            contentType: 'application/json;charset=UTF-8',
            async: false,
            success: function () {
                window.location = 'alpha.jsp';
            }
        });
    }
</script>

</body>
</html>