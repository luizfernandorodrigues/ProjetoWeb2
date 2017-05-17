<%-- 
    Document   : register
    Created on : 16/05/2017, 20:32:53
    Author     : luizf
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

        <form action="index.jsp" style="border:1px solid #ccc">
            <div class="container">
                <label><b>Nome</b></label>
                <input type="text" placeholder="Entrar com Nome" name="nome" required>

                <label><b>Email</b></label>
                <input type="text" placeholder="Entrar com Email" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Entre com a senha" name="senha" required>

                <label><b>Repeat Password</b></label>
                <input type="password" placeholder="Confirmar Senha" name="senha-repeat" required>
                <input type="checkbox" checked="checked"> Lembrar me


                <div class="clearfix">
                    <button type="button" class="cancelbtn">Cancelar</button>
                    <button type="submit" class="signupbtn">Registrar</button>
                </div>
            </div>
        </form>

    </body>
</html>
