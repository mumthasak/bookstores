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
             try
             {
               s=con.createStatement(); 
              r=s.executeQuery("select * from question");
              int i=1;
        %>
              <form action="check.jsp" method="post">
               <table>  
               <%
              while(r.next()){
          
               String st= r.getString(1); %>
               <tr><td>question<%=i%></td></tr><tr><td></td><td><%=st%></td></tr>
               <%String stpg = r.getString(2);%>
               <tr><td></td><td><%=stpg%><input type="radio" name="quest<%=i%>" value="<%=stpg%>">
              <% String stp= r.getString(3);%>
               <%=stp%><input type="radio" name="quest<%=i%>" value="<%=stp%>">
                 <% String stpq= r.getString(4);%>
               <%=stpq%><input type="radio" name="quest<%=i%>" value="<%=stpq%>">
                      </td></tr>
               <%i++;
              
              
              }
               }
             catch(Exception e)
             {
                 e.printStackTrace();
             }
        %>
       </table><br> <input type="submit" value="submit"/></form>
    </body>
</html>
