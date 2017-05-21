<%@page import="bla.Usuario"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bla.Conexao"%>
<%@page import="java.sql.Connection"%>
<%
    String login = "teste"; // Login
    String senha = "123"; // Senha
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>Login :: JSP</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <style>
            body, td, a:link, a:visited {
                font-family: Verdana;
                font-size: 10px;
                color: #000000;
                text-decoration: none;
            }
            a:hover{
                color: #FF0000;
            }
            input {
                font-family: Verdana, Arial, Helvetica, sans-serif;
                font-size: 10px;
                background-color: #FFFFFF;
                border: 1px solid #000000;
            }
        </style>
    </head> <body>
        <%

            String login_form = request.getParameter("login"); // Pega o Login vindo do formulário
            String senha_form = request.getParameter("senha"); //Pega a senha vinda do formulário
            Usuario user = new Usuario();
/*
            Connection conn = Conexao.open();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareStatement("select usu_codigo, usu_nome, usu_login, usu_senha from usuario where usu_login = ?");
            ps.setString(1, login_form);
            rs = ps.executeQuery();
            if (rs.next()) {
                user.setCodigo(rs.getInt("usu_codigo"));
                user.setNome(rs.getString("usu_nome"));
                user.setLogin(rs.getString("usu_login"));
                user.setSenha(rs.getString("usu_senha"));
            }
            Conexao.close(rs, ps, conn);
            user.getLogin()
            user.getSenha()
*/
            if (user.getNome() != null) {
                if (login_form.equals(login)
                        && senha_form.equals(senha)) { //Caso login e senha estejam corretos...
                    out.println("Logado com sucesso."); //Mostra na tela que foi logado com sucesso
                    out.println("Logado com sucesso."); //Mostra na tela que foi logado com sucesso
                    session.putValue("loginUsuario", login_form); //Grava a session com o Login
                    session.putValue("senhaUsuario", senha_form); //Grava a session com a Senha
                    //out.println("<script>document.location.href='logado.jsp';</script>");
                    response.sendRedirect("logado.jsp");
                } else { //Se estiverem incorretos...
                    out.println("Login ou senha inválidos. <a href='java script:back()'>Voltar</a>"); //Exibe na tela e pede para voltar
                }
            }
        %>
    </body>
</html>