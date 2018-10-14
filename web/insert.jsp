<%-- 
    Document   : admin
    Created on : Jun 15, 2018, 8:59:27 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name2");
             String Auth=request.getParameter("des");
             String price=request.getParameter("id");
             String ca=request.getParameter("c");
             String da=request.getParameter("d");
             try
             {
               Class.forName("com.mysql.jdbc.Driver");
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
             Connection con;
             Statement s;
             ResultSet r;
             String q = "insert into question values ('"+name+"','"+Auth+"','"+price+"','"+ca+"','"+da+"')";
             con=DriverManager.getConnection("jdbc:mysql://localhost/cmd","root", "");
             try
             {
               s=con.createStatement(); 
               s.executeUpdate(q);
              
               System.out.println("inserted"); 
               }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
        %>
    </body>
</html>
