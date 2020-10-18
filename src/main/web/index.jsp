<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <script src="js/jquery.js"></script>
    <meta charset="UTF-8">
    <title>Lab 2</title>
    <link rel="stylesheet" href="css/graphic.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/table.css">
</head>
<script>sessionStorage.setItem("is_reloaded", true);</script>
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
    <button id="clearTableButton">Очистить таблицу</button>
    <div id="outputContainer">
        <span class="outputStub notification"></span>
    </div>
</div>
<div id="answer-table"></div>
</body>
<script src="js/checkboxHandler.js"></script>
<script src="js/table.js"></script>
<script src="js/formValidator.js"></script>
<script src="js/graphicValidator.js"></script>
