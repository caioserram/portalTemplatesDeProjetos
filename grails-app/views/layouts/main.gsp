<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <asset:stylesheet src="slick.css"/>
    <asset:stylesheet src="slick-theme.css"/>
    <asset:stylesheet src="application.css"/>

    <asset:javascript src="slick.js"/>
    <asset:javascript src="application.js"/>

    <g:layoutHead/>
</head>
<body>

    <!-- NAVBAR -->
    <div id="flipkart-navbar">
        <div class="container">
            <div class="row row1">
                <ul class="largenav pull-right">
                    <li class="upper-links"><a class="links" href="/documentos">Documentos</a></li>
                    <li class="upper-links"><a class="links" href="/contato">Contato</a></li>

                    <g:if test="${session.customer}">
                        <li class="upper-links dropdown"><a class="links" href="http://clashhacks.in/">Olá, ${session.customer.name}</a>
                            <ul class="dropdown-menu">
                                <li class="profile-li"><a class="profile-links" href="http://yazilife.com/">Minha conta</a></li>
                                <li class="profile-li"><a class="profile-links" href="http://hacksociety.tech/">Sair</a></li>
                            </ul>
                        </li>
                    </g:if>
                    <g:else>
                        <li class="upper-links"><a class="links" href="/login">Cadastre-se / Login</a></li>
                    </g:else>
                </ul>
            </div>
            <div class="row row2">
                <div class="col-sm-2">
                    <h2 style="margin:0px;"><span class="smallnav menu" onclick="openNav()">☰ Brand</span></h2>
                    <h1 style="margin:0px;"><span class="largenav"><a href="/" style="text-decoration: none; color: #FFF">Imperium</a></span></h1>
                </div>
                <div class="flipkart-navbar-search smallsearch col-sm-8 col-xs-11">
                    <div class="row">
                        <input class="flipkart-navbar-input col-xs-11" type="" placeholder="Buscar por..." name="search-query">
                        <button class="flipkart-navbar-button col-xs-1">
                            <svg width="15px" height="15px">
                                <path d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path>
                            </svg>
                        </button>
                    </div>
                </div>
                <div class="cart largenav col-sm-2">
                    <a class="cart-button">
                        <svg class="cart-svg " width="16 " height="16 " viewBox="0 0 16 16 ">
                            <path d="M15.32 2.405H4.887C3 2.405 2.46.805 2.46.805L2.257.21C2.208.085 2.083 0 1.946 0H.336C.1 0-.064.24.024.46l.644 1.945L3.11 9.767c.047.137.175.23.32.23h8.418l-.493 1.958H3.768l.002.003c-.017 0-.033-.003-.05-.003-1.06 0-1.92.86-1.92 1.92s.86 1.92 1.92 1.92c.99 0 1.805-.75 1.91-1.712l5.55.076c.12.922.91 1.636 1.867 1.636 1.04 0 1.885-.844 1.885-1.885 0-.866-.584-1.593-1.38-1.814l2.423-8.832c.12-.433-.206-.86-.655-.86 " fill="#fff "></path>
                        </svg> Cart
                        <span class="item-number ">${session.cart?.cartItems?.size() ?: 0}</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div id="mySidenav" class="sidenav">
        <div class="container" style="background-color: #2874f0; padding-top: 10px;">
            <span class="sidenav-heading">Home</span>
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
        </div>
        <a href="http://clashhacks.in/">Link</a>
        <a href="http://clashhacks.in/">Link</a>
        <a href="http://clashhacks.in/">Link</a>
        <a href="http://clashhacks.in/">Link</a>
    </div>

    <!-- FIM NAVBAR -->

    <g:layoutBody/>

    <footer>
        <div class="footer" id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h3> Contato </h3>
                        <ul>
                            <li> (21) 3576-4203 </li>
                            <li> CONTATO@IMPERIUM.COM.BR </li>
                            <li> <asset:image class="icon" src="icons/whatsapp.png"/>
                            <asset:image class="icon-big" src="icons/facebook.png"/>
                            <asset:image class="icon" src="icons/instagram.png"/> </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4">
                        <h3> Desenvolvimento </h3>
                        <ul>
                            <li> <a href="https://github.com/caioserram/portalTemplatesDeProjetos"> GitHub </a> </li>
                            <li> <a href="http://www2.ic.uff.br/~andrea/gpms2017-2.html"> Pagina da disciplina </a> </li>
                        </ul>
                    </div>
                </div>
                <!--/.row-->
            </div>
            <!--/.container-->
        </div>
        <!--/.footer-->

        <div class="footer-bottom">
            <div class="container">
                <p class="pull-left"> Copyright © 2017, Grupo 1. Todos direitos reservados.</p>
                <div class="pull-right">
                    <ul class="nav nav-pills payments">
                        <li><asset:image class="icon-large" src="icons/uff.png"/></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--/.footer-bottom-->
    </footer>
</body>
</html>
