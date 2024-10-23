<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Битва?</title>

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


<h1>Битва?</h1>

<p>В попытках защититься ты закрываешься руками, но это бесполезно против остро заточенной стали. Незваный гость с безумным смехом наносит тебе удар за ударом, отдающиеся в груди нестерпимой болью.</p>
<p>Все происходит настолько быстро, что ты не успеваешь даже позвать на помощь. Видимо, не иметь под рукой хоть какого-нибудь оружия было крайне плохой идеей. В глазах темнеет, и это</p>
<hr>
<p style="font-family: 'Arial Black'; font-size: 40px; text-align: center">КОНЕЦ</p>

<button onclick="window.location='index.jsp'">На главную</button>




</body>
</html>
