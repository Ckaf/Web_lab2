<%--
  Created by IntelliJ IDEA.
  User: danilax86
  Date: 05.10.2020
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="x-value">
    <p>Выберите X:</p>
    <label><input type="checkbox">-3</label>
    <label><input type="checkbox">-2</label>
    <label><input type="checkbox">-1</label>
    <label><input type="checkbox">0</label>
    <label><input type="checkbox">1</label>
    <label><input type="checkbox">2</label>
    <label><input type="checkbox">3</label>
    <label><input type="checkbox">4</label>
    <label><input type="checkbox">5</label>
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
        <option>1.5</option>
        <option>2</option>
        <option>2.5</option>
        <option>3</option>
    </select>
</div>
