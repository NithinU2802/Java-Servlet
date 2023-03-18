<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>submission</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String gen=request.getParameter("gen");
String add=request.getParameter("add");

try
{
        Class.forName("com.mysql.jdbc.Driver");
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/info", "root", "");
         Statement st=conn.createStatement();
        int i=st.executeUpdate("insert into information(First_Name,Last_Name,Email,Password,Gender,Address)values('"+fname+"','"+lname+"','"+email+"','"+pass+"','"+gen+"','"+add+"')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        e.printStackTrace();
        out.println(e);
        }
 %>
</body>
</html>