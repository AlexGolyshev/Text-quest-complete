<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
<head>
    <title>Наблюдатель</title>

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


<h1>Наблюдатель</h1>

<p>Ты решаешь не вмешиваться в конфликт и наблюдаешь за происходящим, спрятавшись за углом дома.</p>
<p>Толпа с улюлюканьем и одобрительными криками расправляется с несчастным. Из-за их спин рассмотреть можно только поднимающиеся и опускающиеся руки с зажатыми в них дубинками и баграми.</p>
<p>Глухие удары и вопли жертвы приводят тебя в ужас и заставляют устыдиться того, как малодушно ты поступил, не вмешавшись в трагическое происшествие.</p>
<p>Наконец, все стихает. Ты видишь, как толпа расступается. Из-за облаков выходит полная луна, и в ее свете ты замечаешь, что вместо тела бедолаги на земле лежит заросшая серой шерстью туша волка-оборотня.</p>
<p>Толпа снова загудела, оживленно переговариваясь.</p>
<p>"Едва успели! Еще бы немного и обратился бы, всех бы порешал! Сколько их еще бегает по округе - поди попробуй всех подловить в людском облике."</p>
<p>"Да какая разница, если все равно новые наплодятся. Старик-охотник из музея мне говорил, что покончить с ликантропией можно, только убив альфа-самца. А для этого нужен особый кинжал, который в этом музее как раз и хранится".</p>
<p>"Ага, музей-то огромный, там этих мечей-кинжалов пруд пруди. Попробуй найди иголку в стоге сена. А сам старик как назло куда-то запропастился, когда там нужен. Кто еще тварей истребить сможет? Сынок его разве что".</p>
<p>"Ой, да сынок у него вообще бестолковый. Сколько ни учи его - бесполезно. Иначе бы давно всю нечисть из города повывел".</p>
<p>Люди начинают расходиться, и тебе приходится спрятаться за мусорным баком, чтобы тебя не заметили. Мало ли что взбредет в голову разгоряченным горожанам, узнай они, что ты подслушал их разговор.</p>
<p>Музей возвышается на противоположной стороне улицы. Взглянув на него, ты смутно припоминаешь, что он как-то связан с твоим прошлым. К тому же, если там хранится оружие, способное одолеть вожака оборотней, то стоит туда сходить.</p>


<button onclick="getInfo()">Идти в музей</button>

<script>
    function getInfo() {
        $.ajax({
            url: '/info',
            type: 'GET',
            contentType: 'application/json;charset=UTF-8',
            async: false,
            success: function () {
                window.location = 'museum.jsp';
            }
        });
    }
</script>

</body>
</html>