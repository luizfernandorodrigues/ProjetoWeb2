<%-- 
    Document   : cinteudoPostado
    Created on : 29/05/2017, 22:24:44
    Author     : gabri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bla.Conexao"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel = "stylesheet" type = "text/css" href="style.css"/>
    </head>
    <body>
        <div class =" posts">
            <h1>Conteudo postado por usuarios!</h1>
            <%
                Connection conn = Conexao.open();
                PreparedStatement ps = null;
                ResultSet rs = null;
                ps = conn.prepareStatement("select texto from conteudo");
                rs = ps.executeQuery();
                while (rs.next()) {
                    out.println(rs.getString("texto") + "<br/>" + "<br/>");

                }
                Conexao.close(rs, ps, conn);
            %>
            <a href="index.jsp">Voltar</a>
        </div>
    </body>
</html>
