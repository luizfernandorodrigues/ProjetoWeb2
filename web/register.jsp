<%-- 
    Document   : register
    Created on : 16/05/2017, 20:32:53
    Author     : luizf
teste comiit
--%>
<%-- 
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel = "stylesheet" type = "text/css" href="register.css"/>
        <title>Cadastrar</title>
    </head>
    <body>
        <h2>Registrar</h2>
        <form action="ManipulaBanco.jsp" name="cadastro" style="border:1px solid #ccc" method="POST">
            <div class="container">
                <label><b>Nome</b></label>
                <input type="text" placeholder="Entrar com Nome" name="nome" required>
                <label><b>Login</b></label>
                <input type="text" placeholder="Entrar com login" name="login" required>
                <label><b>Senha</b></label>
                <input type="password" placeholder="Entrar com a senha" name="senha" required>
                <label><b>Repetir Senha</b></label>
                <input class="senha-repetir" type="password" placeholder="Confirmar Senha" name="senha_repetir" required>
                <label><b>Endereço</b></label>
                <input type="text" placeholder="Entrar com Endereço" name="end" required>
                <label><b>E-mail</b></label>
                <input type="text" placeholder  ="Entrar com E-mail" name="email" required>
                <input type="checkbox" checked="checked"> Lembrar me
                <div class="clearfix">
                    <button type="button" class="cancelbtn" onclick="Redireciona()">Cancelar</button>
                    <button type="submit" class="signupbtn" onclick="ValidarSenha()">Registrar</button>
                </div>
            </div>
        </form>
        <!-- aqui começa os fontes JS da Pagina para controle e validações -->

        <script>
            //função de aviso de registro gravado com sucesso
            function Alerta() {
                alert("Registro Gravado com Sucesso!");
            }
            // função de comparação dos campos de senha
            function ValidarSenha() {
                senha1 = document.cadastro.senha.value;
                senha2 = document.cadastro.senha_repetir.value;

                if (senha1 !== senha2) {
                    alert("As Senhas Não Correspondem!!");
                }
            }
            function Redireciona() {
                window.self.location.href = "index.jsp";
            }

            //função para criar hash
            function CriarHash() {

            }
        </script>
    </body>
</html>
