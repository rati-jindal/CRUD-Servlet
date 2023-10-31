<%@ page import="com.example.crudservlet.DAO.DAOClass" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/31/2023
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete User Page</title>
</head>
<body>
<%
    boolean status = DAOClass.deleteuser(Integer.parseInt(request.getParameter("id")));
%>
<%@include file="navbar.jsp"%>


</body>
</html>
