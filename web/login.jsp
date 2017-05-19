<%-- 
    Document   : login
    Created on : 18/05/2017, 21:46:35
    Author     : luizf
--%>

<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.Statement"%>
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
        <title>Login</title>
    </head>
    <body>
        <script>
            function AlertaLogado() {
                alert("Login com Sucesso!!")

            }
            function NaoLogado() {
                alert("Não Foi Possivel Logar Senha ou Usuario Não Encontrado!")
            }
        </script>
        <%
            //criando objeto conexao
            Connection conn = Conexao.open();
            Statement stm = null;
            ResultSet rs = null;

            //recebendo parametros do formulario register 
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");

            // abre conexao com o banco
            String sql = "SELECT * FROM USUARIO WHERE '" + senha + "' AND USU_LOGIN ='" + login + "'";

            try {
                stm = Conexao.open().createStatement(rs.TYPE_SCROLL_INSENSITIVE, rs.CONCUR_READ_ONLY);
                rs = stm.executeQuery(sql);
                rs.first();
                response.sendRedirect("index.jsp");
            } catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                stm.close();

            }


        %>
    </body>
</html>
