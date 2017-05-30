<%@page import="javafx.scene.control.Alert"%>
<%@page import="bla.Usuario"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bla.Conexao"%>
<%@page import="java.sql.Connection"%>
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

            Connection conn = Conexao.open();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareStatement("select usu_codigo, usu_nome, usu_login, usu_senha, uso_adm from usuario where usu_login = ?");
            ps.setString(1, login_form);
            rs = ps.executeQuery();
            if (rs.next()) {
                user.setCodigo(rs.getInt("usu_codigo"));
                user.setNome(rs.getString("usu_nome"));
                user.setLogin(rs.getString("usu_login"));
                user.setSenha(rs.getString("usu_senha"));
                user.setAdm(rs.getString("uso_adm"));
            }
            Conexao.close(rs, ps, conn);

            if (user.getNome() != null) {
                if (login_form.equals(user.getLogin())
                        && senha_form.equals(user.getSenha())) { //Caso login e senha estejam corretos...
                    out.println("Logado com sucesso."); //Mostra na tela que foi logado com sucesso
                    out.println("Logado com sucesso."); //Mostra na tela que foi logado com sucesso
                    session.setAttribute("loginUsuario", login_form); //Grava a session com o Login
                    session.setAttribute("senhaUsuario", senha_form); //Grava a session com a Senha
                    session.setAttribute("usuarioAdm", user.getAdm()); //Grava a session com a Senha
                    //out.println("<script>document.location.href='logado.jsp';</script>");
                    response.sendRedirect("logado.jsp");
                } else { //Se estiverem incorretos...
                    out.println("Senha inválida." + "<a href=index.jsp>Voltar</a>"); //Exibe na tela e pede para voltar
                }
            } else if (user.getNome() == null && !login_form.isEmpty()) {
                out.println("Usuario invalido ou inexistente!" + "<a href=index.jsp>Voltar</a>");
            } else if (user.getNome() == null && login_form.isEmpty()) {
                response.sendRedirect("index.jsp");
            }

        %>
    </body>
</html>
