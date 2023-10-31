<%@ page import="com.example.crudservlet.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.crudservlet.DAO.DAOClass" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>Index-Page</title>
  <%@include file="css.jsp"%>
</head>
<body class="bg-light">
<%--jstl-core-uri-tag--%>

<%
List<User> list = DAOClass.readAllUser();
  request.setAttribute("users",list);
%>

<%@include file="/navbar.jsp"%>

<div class="container p-3 text-center">
  <div class="card">
    <div class="card-body">
      <p class="fs-3 text-center mt-3">All User Details</p>
      <table class="table">
        <thead>
        <tr>
          <th scope="col">Id</th>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
          <th scope="col">Gender</th>
          <th scope="col">City</th>
          <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="u">
          <tr>
            <th scope="id">${u.getId()}</th>
            <td>${u.getName()}</td>
            <td>${u.getEmail()}</td>
            <td>${u.getGender()}</td>
            <td>${u.getCity()}</td>
            <td><a href="edituser.jsp?id=${u.getId()}" class="btn btn-primary btn-sm">Edit</a>
              <a href="delete.jsp?id=${u.getId()}" class="btn btn-danger btn-sm">Delete</a></td>
          </tr>
        </c:forEach>


        </tbody>
      </table>
    </div>
  </div>
</div>

</body>
</html>