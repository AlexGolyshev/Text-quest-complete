<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Незнакомец</title>

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


<h1>Незнакомец</h1>

<p>Открыв дверь, ты видишь немолодого мужчину, заросшего щетиной. Его одежда неопрятна, а дыхание отдает крепким алкоголем. Он зловеще улыбается тебе желтыми, подгнившими зубами, затем произносит:</p>
<p>"Ну вот мы и встретились. Как долго я ждал этого момента. Потомок великого рода? В гробу я видал тебя и твой род, ублюдок! Я никогда не прощу того, что ты сделал с моей семьей!"</p>
<p>После этих слов незнакомец достает из-под пальто длинный тесак и с диким воплем бросается на тебя.</p>


<button onclick="useCane()">Защититься</button>



<script>
    function useCane() {
        $.ajax({
            url: '/caneCheck',
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