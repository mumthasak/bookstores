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
            String name=request.getParameter("name1");
             String password=request.getParameter("password1");
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
             String q="Select* from admin where username='"+name+"'and password='"+password+"'";
             out.println("r.getstring(1)");
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
               if(c==0)
               {
                    response.sendRedirect("fail.html");
               }
               else
               {
                  response.sendRedirect("adminhome.html");  
               }
             }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
        %>
    </body>
</html>
