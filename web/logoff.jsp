<%-- 
    Document   : logoff
    Created on : 23/05/2017, 20:27:04
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
//Destroi as sessions
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
