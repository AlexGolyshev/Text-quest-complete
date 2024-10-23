<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Тайная комната</title>

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


<h1>Тайная комната</h1>

<p>По словам горожан, разговор которых ты подслушал после расправы над оборотнем в человеческом облике, где-то в музее хранится кинжал, способный убить вожака оборотней.</p>
<p>Вспомнив это, ты вспоминаешь и то, как отец рассказал тебе о тайном помещении, где находятся самые редкие и ценные артефакты. Потайной вход расположен в нише стены в дальнем конце зала.</p>
<p>Легко найдя нужное место, ты нажимаешь на неприметную плиту у основания стены. Ниша раскрывается, демонстрируя просторное помещение, заполненное всевозможным оружием для борьбы с самыми сильными монстрами.</p>
<p>Ты достаешь из кармана зажигалку, и в ее свете среди обилия мечей, ножей, топоров, луков, арбалетов, мушкетов и прочего добра сразу замечаешь отливающий серебром изогнутый кинжал с рукоятью в форме головы волка.</p>
<p>Сомнений быть не может: это тот самый кинжал. Проверив заточку лезвия, ты убираешь его в ножны и крепишь на поясе. Пора разобраться с вожаком раз и навсегда.</p>



<button onclick="takeDagger()">Отправиться в логово альфа-оборотня</button>

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