<%--
  Created by IntelliJ IDEA.
  User: gorel
  Date: 07.10.2020
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../css/table.css">
<div class="table">
    <div class="table-header">
        <div>X</div>
        <div>Y</div>
        <div>R</div>
        <div>Входит ли в ОДЗ?</div>
    </div>
    <div class="table-content">
            <div class="table-row">
                <div>${x}</div>
                <div>${y}</div>
                <div>${r}</div>
                    ${result ? "<div style=\"color: green\">Да</div>" :
                            "<div style=\"color: red\">Нет</div>"}
            </div>
    </div>
    <button onclick="location.href = 'http://localhost:8080/Web_lab2-1.0-SNAPSHOT/index.jsp'">Пройдемте домой</button>
</div>