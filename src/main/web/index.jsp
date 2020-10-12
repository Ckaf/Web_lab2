<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <title>Lab 2</title>
    <link rel="stylesheet" href="css/graphic.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="hero">
    <jsp:include page="jsps/hero.jsp"/>
</div>
<div class="graphic">
    <jsp:include page="jsps/graphic.jsp"/>
</div>
<div class="form-container">
    <jsp:include page="jsps/forms.jsp"/>
    <button id="checkButton">Проверить</button>
    <button onclick="location.href = 'http://localhost:8080/Web_lab2-1.0-SNAPSHOT/jsps/answer.jsp'">
        Перейти на страницу с результатами
    </button>
</div>
<script src="js/jquery.js"></script>
<script src="js/checkboxHandler.js"></script>
<script src="js/formValidator.js"></script>
<script src="js/graphicValidator.js"></script>

</body>

