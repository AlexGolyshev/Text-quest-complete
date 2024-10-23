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


<h1>Пробуждение</h1>

<p>Ты просыпаешься в холодном поту после кошмарного сна. Тебе снились косматые тени и грозный рык неведомых чудовищ. Неприятный осадок дополняется тем, что ты совсем ничего не помнишь о своем прошлом.</p>
<p>Кроме того, на правом предплечье красуются едва затянувшиеся раны от чьих-то огромных зубов. Что за зверь мог их оставить?</p>
<p >Резко вскакиваешь с кровати, осматриваешься кругом в надежде, что какая-нибудь деталь поможет вернуть память. Возле кровати замечаешь длинную трость с массивным серебристым набалдашником.</p>
<p>Взять ее с собой?</p>


<button onclick="takeCane()">Да</button>
<button onclick="window.location='knock-knock.jsp'">Нет</button>


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
