<%@ page import="vn.edu.iuh.fit.www_lab_week01.repositories.AccountRepository" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.repositories.ConnectDB" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.entities.Account" %><%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 23/09/2023
  Time: 8:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cập nhật tài khoản</title>
    <%@include file="css.jsp"%>
</head>
<body>
<%@include file="menu.jsp"%>
<div class="container p-4">
    <div class="row" style="margin-top: 10px">
        <div class="content" style="height: 1090px; width: 960px; margin: auto">
            <div class="header">
                <h2  class="text-left" style="text-align: center">THÔNG TIN CÁ NHÂN</h2>
            </div>
            <div class="body" style="margin-top: 10px">
                <form action="updateAccount" method="post">

                    <%
                        String id = request.getParameter("id");
                        AccountRepository accountRepository = new AccountRepository(ConnectDB.getConnection());
                        Account account = accountRepository.getAccount(id);
                    %>

                    <label for="fullName" class="control-label col-xs-3">Full Name</label>
                    <input type="text" name="fullName" id="fullName" class="form-control" value="<%=account.getFullName()%>">

                    <label for="pw" class="control-label col-xs-3">Password</label>
                    <input type="password" name="pass" id="pw" class="form-control" value="<%=account.getPassword()%>">

                    <label for="email" class="control-label col-xs-3">Email</label>
                    <input type="text" name="email" id="email" class="form-control" value="<%=account.getEmail()%>">

                    <label for="SDT" class="control-label col-xs-3">Phone</label>
                    <input type="text" name="phone" id="SDT" class="form-control" value="<%=account.getPhone()%>">

                    <label for="status" class="control-label col-xs-3">Status</label>
                    <input type="text" name="status" id="status" class="form-control" value="<%=account.getStatus()%>">

                    <label for="id" class="control-label col-xs-3">AccountID</label>
                    <input type="text" name="id" id="id" class="form-control" value="<%=account.getAccountId()%>">

                    <button class="btn btn-group-justifid" name="submit1" id="Save" type="submit" style="color: white;margin-top: 10px; background-color: cornflowerblue; width: 100%">
                        Update Account
                    </button>

                    <button class="btn btn-group-justifid" name="submit1" id="Clear" type="submit" style="color: white;margin-top: 10px; background-color: cornflowerblue; width: 100%">
                        Clear
                    </button>
                </form>

                <c:if test="${not empty success2}">
                    <p class="text-center text-success">${success2}</p>
                    <c:remove var="success2"/>
                </c:if>

                <c:if test="${not empty error2}">
                    <p class="text-center text-success">${error2}</p>
                    <c:remove var="error2"/>
                </c:if>
            </div>
        </div>

    </div>
</div>
</body>
</html>
