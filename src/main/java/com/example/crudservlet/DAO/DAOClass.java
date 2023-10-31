package com.example.crudservlet.DAO;

import com.example.crudservlet.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAOClass {

    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_ex","root","123456");
            }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return con;
    }

    public int saveUser(User u){

        int status = 0;
        try {
            Connection conn = getConnection();
            String sql = "INSERT INTO user (name, email, password, gender, city)VALUES (?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, u.getName());
            statement.setString(2, u.getEmail());
            statement.setString(3, u.getPassword());
            statement.setString(4, u.getGender());
            statement.setString(5, u.getCity());

            status=statement.executeUpdate();


        }
        catch (Exception e){

            System.out.println(e);

        }
        return status;

    }
    public static List<User> readAllUser(){
        List<User> list = new ArrayList<>();
        try{
            Connection con = getConnection();
            String sql = "SELECT * FROM user";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String gender = rs.getString("gender");
                String city = rs.getString("city");

                User u = new User(id,name,email,password,gender,city);
                list.add(u);
            }
        }
        catch (Exception e){
            System.out.println(e);

        }
        return list;
    }

    public static User readUserById(int id ){

        User user = null;

        try{
            Connection con = getConnection();
            String sql = "SELECT * FROM user WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                String name = rs.getString("name");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String gender = rs.getString("gender");
                String city = rs.getString("city");

                user = new User(id,name,email,password,gender,city);

            }
        }
        catch (Exception e){
            System.out.println(e);

        }
        return user;

    }

    public int update(User u, int id){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
                    "update user set name=?,password=?,email=?,gender=?,city=? where id=?");
            ps.setString(1,u.getName());
            ps.setString(2,u.getPassword());
            ps.setString(3,u.getEmail());
            ps.setString(4,u.getGender());
            ps.setString(5,u.getCity());
            ps.setInt(6,id);
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
public static boolean deleteuser(int id){
        boolean status = false;


    try{
        Connection con = getConnection();
        String sql = "DELETE FROM user WHERE id=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1,id);
        status=ps.execute();

    }
    catch (Exception e){
        System.out.println(e);

    }


        return status;
}

}

