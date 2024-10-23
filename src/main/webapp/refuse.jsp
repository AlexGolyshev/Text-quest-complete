<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Предложение, от которого можно отказаться</title>

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


<h1>Предложение, от которого можно отказаться</h1>

<p>Ты вежливо отказываешься от снадобья и возвращаешь пузырек Бальмонту. Мало ли кто называет себя доктором. Нет причин слепо доверять незнакомцу.</p>
<p>Спрятав револьвер в карман, спешишь в ту сторону, откуда доносились крики и шум. Возможно, ты еще успеешь кому-то помочь.</p>


<button onclick="window.location='crowd.jsp'">Идти к источнику шума</button>


</body>
</html>