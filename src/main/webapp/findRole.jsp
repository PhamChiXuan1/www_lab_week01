<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 23/09/2023
  Time: 8:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="css.jsp"%>
<html>
<head>
    <title>Tìm kiếm theo role</title>
</head>
<body>
<%@include file="menu.jsp"%>
<div class="col-xs-12" style="height: 1090px; width: 960px; margin: auto">
    <h4 style="text-align: center">Danh sách các Account</h4>
    <table class="table table-striped" role="table">
        <form action="findAccount" method="post">
            <tr>
                <th>AccountID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Status</th>
                <th>
                    <select name="id">
                        <option>admin</option>
                        <option>user</option>
                    </select>
                </th>
                <th></th>
            </tr>
            <tbody>

            </tbody>
        </form>
    </table>
</div>
</body>
</html>
