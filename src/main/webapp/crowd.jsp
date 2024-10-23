<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Агрессивная толпа</title>

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


<h1>Агрессивная толпа</h1>

<p>Чем ближе ты подходишь к месту действия, тем громче становится многоголосый гул. Больше десятка горожан плотной толпой наводнили переулок. Их крики звучат агрессивно, в руках у некоторых пылают факелы.</p>
<p>С трудом продравшись сквозь толчею, ты наконец увидел, кого окружили разъяренные люди.</p>
<p>Прижавшись спиной к кирпичной стене, перед тобой стоит дрожащий мужчина в изорванном плаще. Его помятая шляпа сползла на глаза, полные отчаяния и ужаса.</p>
<p>"Вот он! Держи его! Мы знаем твою истинную суть! Убийца, убийца! Теперь не уйдешь!"</p>
<p>Толпа все яростнее скандирует угрозы и все плотнее обступает жертву. Помимо факелов в руках у нескольких крепких молодцов ты видишь дубинки, багры и даже вилы. Все идет к самосуду и расправе.</p>
<p>Если ты не вмешаешься, бедняге явно несдобровать. Но стоит ли идти против разъяренной толпы вооруженных людей?</p>


<button onclick="window.location='rescue.jsp'">Да</button>
<button onclick="window.location='hide.jsp'">Нет</button>


<script>
    function takeCane() {
        $.ajax({
            url: '/cane',
            type: 'GET',
            contentType: 'application/json;charset=UTF-8',
            async: false,
            success: function () {
                window.location = 'knock-knock.jsp';
            }
        });
    }
</script>

</body>
</html>