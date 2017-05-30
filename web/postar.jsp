<%-- 
    Document   : postar
    Created on : 29/05/2017, 21:56:57
    Author     : gabri
--%>

<%@page import="java.sql.SQLException"%>
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
    </head>
    <body>
        <%
            Connection conn = Conexao.open();
            PreparedStatement ps = null;
            ResultSet rs = null;

            //recebendo parametros do formulario postarTxt
            String txt = request.getParameter("conteudoTxt");
            
            String sql = "INSERT INTO CONTEUDO (TEXTO) VALUES(?)";

            try {
                ps = Conexao.open().prepareStatement(sql);
                ps.setString(1, txt);
                ps.executeUpdate();
            } catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                ps.close();
                Conexao.close(ps, conn);
            }

            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
