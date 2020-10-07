<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <meta charset="UTF-8">
    <title>Lab 2</title>
    <link rel="stylesheet" href="css/graphic.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/table.css">
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
    <div id="outputContainer">
        <span class="outputStub notification">Результаты отсутствуют</span>
    </div>
</div>
<%--<div class="answer">--%>
<%--    <jsp:include page="jsps/answer.jsp"/>--%>
<%--</div>--%>
<script src="js/jquery.js"></script>
<script src="js/checkboxHandler.js"></script>
<script src="js/formValidator.js"></script>
<script src="js/graphicValidator.js"></script>

</body>

