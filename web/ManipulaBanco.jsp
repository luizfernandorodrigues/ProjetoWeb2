<%-- 
    Document   : ManipulaBanco
    Created on : 17/05/2017, 20:13:29
    Author     : luizf
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bla.Conexao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //criando objeto conexao
            Connection conn = Conexao.open();
            PreparedStatement ps = null;
            ResultSet rs = null;

            //recebendo parametros do formulario register 
            String nome = request.getParameter("nome");
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");

            // abre conexao com o banco
           

            String sql = "INSERT INTO USUARIO (USU_NOME,USU_LOGIN,USU_SENHA) VALUES(?,?,?)";

            try {
                ps = Conexao.open().prepareStatement(sql);
                ps.setString(1, nome);
                ps.setString(2, login);
                ps.setString(3, senha);

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
