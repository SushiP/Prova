<%-- 
    Document   : newjsp
    Created on : 5-dic-2015, 13.19.36
    Author     : Giulio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="db.*" %>
        <%@page import="java.sql.*" %>
    </head>
    <body>
        <%! 
            DbInterrogator dbint = new DbInterrogator(dbConnector.getConnection());
            String table;
        %>
        <h1>Hello Worldserdser!</h1>
        <%
            try{
                table = dbint.getTable("utente");
            }catch(SQLException e){
                System.out.println("OK");
            }
        %>
        <%=table%>
    </body>
</html>
