<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 23/09/2023
  Time: 8:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
    <%@include file="css.jsp"%>
    <div class="container">
        <div class="col-xs-12">
            <nav class="navbar navbar-expand-sm">
                <ul class="navbar nav">
                    <li class="navbar-item">
                       <a href="dashboard.jsp" class="navbar-link"
                       style="margin-right: 20px; color: black; text-decoration: none" id="btn1">Home</a>
                    </li>
                    <li class="navbar-item">
                        <a href="addAccount.jsp" class="navbar-link"
                           style="margin-right: 20px; color: black; text-decoration: none" id="btn2">Register</a>
                    </li>
                    <li class="navbar-item">
                        <a href="addRole.jsp" class="navbar-link"
                           style="margin-right: 20px; color: black; text-decoration: none" id="btn4">Add Role</a>
                    </li>
                    <li class="navbar-item">
                        <a href="findRole.jsp" class="navbar-link"
                           style="margin-right: 20px; color: black; text-decoration: none" id="btn5">Search by role</a>
                    </li>
                    <li class="navbar-item">
                        <a href="index.jsp" class="navbar-link"
                           style="margin-right: 20px; color: black; text-decoration: none" id="btn3">Log out</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</head>
<body>

</body>
</html>
