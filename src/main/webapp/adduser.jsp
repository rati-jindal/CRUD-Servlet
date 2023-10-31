<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 10/31/2023
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddUserPage</title>
    <%@include file="css.jsp"%>
</head>
<body class="bg-light">
<%@include file="navbar.jsp"%>

<div class="container p-4">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                    <p class="fs-3 text-center">Add User</p>
                    <form action="register" method="post">

                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" name="name" class="form-control">

                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email address</label>
                            <input type="email" name="email" class="form-control">

                        </div>

                        <div class="mb-3">
                            <label  class="form-label">Password</label>
                            <input type="password" name="password" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Gender</label><br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="Male">
                                <label class="form-check-label" >Male</label>
                            </div>

                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="Female">
                                <label class="form-check-label" >Female</label>
                            </div>
                        </div>

                        <div class="mb-3">

                            <select class="form-select mb-3" name="city" >
                                <option selected>Select City</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Mumbai">Mumbai</option>
                                <option value="Jaipur">Jaipur</option>
                                <option value="Kolkata">Kolkata</option>
                                <option value="Ahmedabad">Ahmedabad</option>
                            </select>
                        </div>
                        <div class="md-3">
                            <button type="submit" class="btn btn-primary col-md-12  " value="Register">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
