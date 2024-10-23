<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Защитник слабых</title>

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


<h1>Защитник слабых</h1>

<p>Решив не дать случиться непоправимому, ты начинаешь расталкивать агрессивно настроенных горожан, пытаясь оттеснить их от скорчившегося у стены человека. Начинается свалка, кто-то пытается ударить тебя в ответ, но попадает лишь по своим.</p>
<p>В общей неразберихе никто не замечает, как из-за облаков показывается полная луна. Дрожащий от страха мужчина внезапно распрямляется и резко вырастает в размерах. Плащ окончательно рвется, и из-под него показывается серая шерсть.</p>
<p>При виде хищно горящих глаз и огромных клыков оборотня толпа в панике подается назад, создавая давку. Каким-то чудом ты успеваешь выбраться из переулка, который превратился в натуральную скотобойню. Зверь в эту ночь порезвится на славу.</p>
<p>Но далеко уйти тебе не удается. Расправившись с обидчиками, оборотень в несколько прыжков настигает тебя, нависнув сверху чудовищной тенью. Похоже, скрыться уже не получится. Остается только обороняться.</p>


<button onclick="fight()">Принять бой</button>




<script>
    function fight() {
        $.ajax({
            url: '/revolverCheck',
            type: 'POST',
            dataType: 'text',
            async: false,
            success: function (msg) {
                window.location = msg;
            }
        });
    }
</script>

</body>
</html>
