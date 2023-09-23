<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 23/09/2023
  Time: 8:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.repositories.AccountRepository" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.repositories.ConnectDB" %>
<%@ page import="vn.edu.iuh.fit.www_lab_week01.entities.Account" %>
<%@ page import="java.util.List" %>
<%@include file="css.jsp"%>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<%@include file="menu.jsp"%>
<div class="col-xs-12" style="height: 1090px; width: 960px; margin: auto">
    <h4 style="text-align: center">Danh sách Account</h4>
    <table class="table table-striped" role="table">
        <form action="" method="post">
            <tr>
                <th>AccountID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Status</th>
                <th>Role</th>
                <th></th>
                <th></th>
            </tr>
            <tbody>
            <% AccountRepository accountRepository = new AccountRepository(ConnectDB.getConnection());
            List<Object[]> list = accountRepository.getAccount();
            for(int i = 0; i < list.size(); i++){
                String status = String.valueOf(Integer.parseInt(list.get(i)[4].toString()));
                if(status.equalsIgnoreCase("1")){
                    status = "Active";
                }
                if(status.equalsIgnoreCase("0")){
                    status = "Deactive";
                }
                if(status.equalsIgnoreCase("-1")){
                    status = "Xoa";
                }
            }
            %>
                <tr>
                    <td><%= list.get(i)[0].toString() %></td>
                    <td><%= list.get(i)[1].toString() %></td>
                    <td><%= list.get(i)[2].toString() %></td>
                    <td><%= list.get(i)[3].toString() %></td>
                    <td><%= status %></td>
                    <td><%= list.get(i)[5].toString() %></td>
                    <td><a href="updateAccount.jsp?id=<%=list.get(i)[0].toString()%>"><input class="btn btn-primary" type="button" name="edit" id="edit" value="Edit"/></a></td>
                    <td><a href="deleteAccount?id=<%=list.get(i)[0].toString()%>"><input class="btn btn-primary" type="button" name="edit" id="delete" value="Delete"/></a></td>
                </tr>
            </tbody>
        </form>
    </table>
</div>
</body>
</html>
