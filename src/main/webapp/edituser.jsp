<%@ page import="com.example.crudservlet.model.User" %>
<%@ page import="com.example.crudservlet.DAO.DAOClass" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/31/2023
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit User Page</title>
  <%@include file="css.jsp"%>
</head>
<body class="bg-light">
<%
  User user = DAOClass.readUserById(Integer.parseInt(request.getParameter("id")));
%>
<%@include file="navbar.jsp"%>


<div class="container p-4">
  <div class="row">
    <div class="col-md-6 offset-md-3">
      <div class="card">
        <div class="card-body">
          <p class="fs-3 text-center">Edit User</p>
          <form action="update" method="post">

<%--            <div class="mb-3">--%>
<%--              <label class="form-label">Id</label>--%>
              <input type="hidden" name="id" value="<%=user.getId()%>" >

<%--            </div>--%>

            <div class="mb-3">
              <label class="form-label">Full Name</label>
              <input type="text" name="name" value="<%=user.getName()%>" class="form-control">

            </div>

            <div class="mb-3">
              <label class="form-label">Email address</label>
              <input type="email" name="email" value=<%=user.getEmail()%> class="form-control">

            </div>

            <div class="mb-3">
              <label  class="form-label">Password</label>
              <input type="password" name="password" value=<%=user.getPassword()%> class="form-control">
            </div>

            <div class="mb-3">
              <label class="form-label">Gender</label><br>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" value="Male" checked =<%=user.getGender().equalsIgnoreCase("Male")%>>
                <label class="form-check-label" >Male</label>
              </div>

              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" value="Female"checked=<%=user.getGender().equalsIgnoreCase("Female")%>>
                <label class="form-check-label" >Female</label>
              </div>
            </div>

            <div class="mb-3">

              <select class="form-select mb-3" name="city" >
                <option  >Select City</option>
                <option value="Delhi"selected=<%=user.getCity().equalsIgnoreCase("Delhi")%>>Delhi</option>
                <option value="Mumbai"selected=<%=user.getCity().equalsIgnoreCase("Mumbai")%>>Mumbai</option>
                <option value="Jaipur"selected=<%=user.getCity().equalsIgnoreCase("Jaipur")%>>Jaipur</option>
                <option value="Kolkata"selected=<%=user.getCity().equalsIgnoreCase("Kolkata")%>>Kolkata</option>
                <option value="Ahmedabad"selected=<%=user.getCity().equalsIgnoreCase("Ahmedabad")%>>Ahmedabad</option>
              </select>
            </div>
            <div class="md-3">
              <button type="submit" class="btn btn-primary col-md-12">Update</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
