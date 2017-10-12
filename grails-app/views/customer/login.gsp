<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

    <div id="content" role="main">
        <g:if test="${flash.error}">
            <div class="bg-danger text-white">${flash.error}</div>
        </g:if>

        <section class="col-xs-2">
            <g:form action="login" controller="customer" method="POST">
                <label for="username">Usuário</label>
                <g:textField name="username" value="${params.username}"/>
                <label for="password">Senha</label>
                <g:passwordField name="password"/>
                <g:submitButton name="login" value="ENTRAR" />
            </g:form>
        </section>
        <section class="col-xs-2">
            <g:form action="register" controller="customer" method="POST">
                <g:textField name="name" placeholder="NOME"/>
                <g:textField name="email" placeholder="EMAIL"/>
                <g:passwordField name="password" placeholder="SENHA"/>
                <g:passwordField name="confirmPassword" placeholder="CONFIRME SUA SENHA"/>
                <g:submitButton name="register" value="CADASTRAR" />
            </g:form>
        </section>
    </div>


<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
