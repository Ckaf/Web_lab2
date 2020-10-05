<%--
  Created by IntelliJ IDEA.
  User: danilax86
  Date: 05.10.2020
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="x-value">
    <form id="checkForm">
    <p>Выберите X:</p>
        <label><input type="checkbox" id="cb1" value="-3">-3</label>
        <label><input type="checkbox" id="cb2" value="-2">-2</label>
        <label><input type="checkbox" id="cb3" value="-1">-1</label>
        <label><input type="checkbox" id="cb4" value="0">0</label>
        <label><input type="checkbox" id="cb5" value="1">1</label>
        <label><input type="checkbox" id="cb6" value="2">2</label>
        <label><input type="checkbox" id="cb7" value="3">3</label>
        <label><input type="checkbox" id="cb8" value="4">4</label>
        <label><input type="checkbox" id="cb9" value="5">5</label>
    </form>
</div>
<div class="y-value">
    <p>Выберите Y:</p>
    <label>
        <input name="y_in" type="text" placeholder="Значение от -3 до 5" maxlength="6">
    </label>
</div>
<div class="r-value">
    <p>Выберите R:</p>
    <select id="r-value-select" name="r_btn">
        <option value="1">1</option>
        <option value="1.5">1.5</option>
        <option value="2">2</option>
        <option value="2.5">2.5</option>
        <option value="3">3</option>
    </select>
</div>