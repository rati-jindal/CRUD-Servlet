package com.example.crudservlet.Servlets;

import com.example.crudservlet.DAO.DAOClass;
import com.example.crudservlet.model.User;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet (name="RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {


    DAOClass obj;
    public void init(){
        obj = new DAOClass();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        User u = new User(name,email,password,gender,city);
//        passing value to DAO


        int sts =obj.saveUser(u);
        if(sts==0){
            out.println("Couldn't save");
        }
        else{
            out.println("Saved User");
        }

    }

    public void destroy() {
    }
}
