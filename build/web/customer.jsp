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
            String name=request.getParameter("name");
            session.setAttribute("user",name);
             String password=request.getParameter("password");
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
             String q="Select* from customer where username='"+name+"'and password='"+password+"'";
             con=DriverManager.getConnection("jdbc:mysql://localhost/cmd","root", "");
             try
             {
               s=con.createStatement(); 
               r=s.executeQuery(q);
               int c=0;
               while(r.next())
               {
                   c++;
               }
               if(c>0)
               {
                  response.sendRedirect("customerhome.html"); 
               }
               else
                  response.sendRedirect("fail.html");  
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
        %>
    </body>
</html>
