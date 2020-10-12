<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: gorel
  Date: 07.10.2020
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="table">
    <div class="table-header">
        <div>X</div>
        <div>Y</div>
        <div>R</div>
        <div>Входит ли в ОДЗ?</div>
    </div>
    <div class="table-content">

        <c:forEach var="obj" items="${deque}">
            <div class="table-row">
                <div>${obj.getX()}</div>
                <div>${obj.getY()}</div>
                <div>${obj.getR()}</div>
                    ${obj.getResult() ? "<div style=\"color: green\">Да</div>" :
                            "<div style=\"color: red\">Нет</div>"}
            </div>
        </c:forEach>
    </div>
</div>