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
            
             con=DriverManager.getConnection("jdbc:mysql://localhost/cmd","root", "");
             int i=1;
             int sum=0;
             try
             {
               s=con.createStatement(); 
              r=s.executeQuery("select * from question");
              while(r.next()){
               String st=request.getParameter("quest"+i);
      
               String p=r.getString(5);
               if(p.equals(st))
               {
                   sum=sum+10;
               }
               i++;
             
              }
               }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
        %>
       <h2>score=<%=sum%></h2>
    </body>
</html>
