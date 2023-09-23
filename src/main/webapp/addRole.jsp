<%@ page import="vn.edu.iuh.fit.www_lab_week01.repositories.RoleRepository" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.repositories.ConnectDB" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.entities.GrantAccess" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.entities.Account" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.repositories.AccountRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Thêm quyền</title>
    <%@include file="css.jsp"%>
</head>
<body>
<%@include file="menu.jsp"%>
<div class="container p-4">
    <div class="row" style="margin-top: 10px">
        <div class="content" style="height: 1090px; width: 960px; margin: auto">
            <div class="header">
                <h2 class="text-left" style="text-align: center">THÔNG TIN CÁ NHÂN</h2>
            </div>
            <div class="body" style="margin-top: 10px">
                <form action="addrole" method="post">
                    <label for="id" class="control-label col-xs-3">AccountID</label>
                    <input type="text" name="id" id="id" class="form-control">

                    <label for="roleId" class="control-label col-xs-3">RoleID</label>
                    <select name="roleID" id="roleId" class="form-control">
                        <option>admin</option>
                        <option>user</option>
                    </select>

                    <label for="pw" class="control-label col-xs-3">Is grant</label>
                    <select name="isGrant" id="pw" class="form-control">
                        <option>0</option>
                        <option>1</option>
                    </select>

                    <label for="note" class="control-label col-xs-3">Note</label>
                    <input type="text" name="note" id="note" class="form-control">

                    <button class="btn btn-group-justifid" name="submit1" id="Save" type="submit" style="color: white;margin-top: 10px; background-color: cornflowerblue; width: 100%">
                        Add Account
                    </button>

                    <button class="btn btn-group-justifid" name="submit1" id="Clear" type="submit" style="color: white;margin-top: 10px; background-color: cornflowerblue; width: 100%">
                        Clear
                    </button>
                </form>
                <c:if test="${not empty success1}">
                    <p class="text-center text-success">${success1}</p>
                    <c:remove var="success1"/>
                </c:if>

                <c:if test="${not empty error1}">
                    <p class="text-center text-success">${error1}</p>
                    <c:remove var="error1"/>
                </c:if>
            </div>

        </div>
    </div>
</div>
</body>
</html>