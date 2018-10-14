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
             String name=request.getParameter("id2");
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
             String q = "delete from question where ques ='"+name+"'";
             con=DriverManager.getConnection("jdbc:mysql://localhost/cmd","root", "");
             try
             {
               s=con.createStatement(); 
              r=s.executeQuery("select * from question  where ques ='"+name+"'");
              if(r.next()){
               String st= r.getString(1);
               out.println("question:-"+st);
               String stpg= r.getString(2);
               out.println("option a:-"+stpg);
               String stp= r.getString(3);
               out.println("option b:-"+stp);
               String stpgq= r.getString(4);
               out.println("option c:-"+stpgq);
               String stpr= r.getString(5);
               out.println("correct:-"+stpr);
              
              }
               }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
        %>
    </body>
</html>
