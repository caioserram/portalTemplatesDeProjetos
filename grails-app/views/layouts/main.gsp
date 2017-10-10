<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

    <div class="navbar navbar-static-top top-nav-bar" role="navigation">
        <div class="login-container">
            <a class="login-btn" href="/login">
                <h1>Cadastre-se / Login</h1>
            </a>
        </div>
        <div class="cart-container">
            <h1>carrinho</h1>
        </div>
    </div>

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
                    <i class="fa grails-icon">
                        <asset:image src="logo.png"/>
                    </i> Imperium
                </a>
            </div>
            <div class="header-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li>HOME</li>
                    <li>DOCUMENTOS</li>
                    <li>CONTATO</li>
                    <li><input type="text" placeholder="busca"></li>
                </ul>
            </div>
        </div>
    </div>

    <g:layoutBody/>

    <div class="footer" role="contentinfo">
        <div class="footer-contato">
            <p>ATENDIMENTO</p>
            <p>(21) 3576-4203 / CONTATO@IMPERIUM.COM.BR</p>
        </div>

        <div class="footer-social">
            <input type="text" placeholder="busca"> <br>
            <asset:image class="icon" src="icons/whatsapp.png"/>
            <asset:image class="icon-larger" src="icons/facebook.png"/>
            <asset:image class="icon" src="icons/instagram.png"/>
            <h1>DESENVOLVIMENTO</h1>
        </div>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
