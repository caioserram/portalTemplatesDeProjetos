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

    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="slick.css"/>
    <asset:stylesheet src="slick-theme.css"/>

    <asset:javascript src="slick.js"/>

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
            <div class="header-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/">HOME</a></li>
                    <li><a href="/documentos">DOCUMENTOS</a></li>
                    <li><a href="/contato">CONTATO</a></li>
                    <li class="col-lg-3">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Procurar por...">
                            <span class="input-group-btn">
                                <button class="btn btn-secondary" type="button">buscar</button>
                            </span>
                        </div>
                    </li>
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
<asset:javascript src="slick.js"/>

<script type="text/javascript">
    $(document).on('ready', function() {
        $(".vertical-center-4").slick({
            dots: true,
            vertical: true,
            centerMode: true,
            slidesToShow: 4,
            slidesToScroll: 2
        });
        $(".vertical-center-3").slick({
            dots: true,
            vertical: true,
            centerMode: true,
            slidesToShow: 3,
            slidesToScroll: 3
        });
        $(".vertical-center-2").slick({
            dots: true,
            vertical: true,
            centerMode: true,
            slidesToShow: 2,
            slidesToScroll: 2
        });
        $(".vertical-center").slick({
            dots: true,
            vertical: true,
            centerMode: true,
        });
        $(".vertical").slick({
            dots: true,
            vertical: true,
            slidesToShow: 3,
            slidesToScroll: 3
        });
        $(".regular").slick({
            dots: true,
            infinite: true,
            slidesToShow: 3,
            slidesToScroll: 3
        });
        $(".center").slick({
            dots: true,
            infinite: true,
            centerMode: true,
            slidesToShow: 3,
            slidesToScroll: 3
        });
        $(".variable").slick({
            dots: true,
            infinite: true,
            variableWidth: true
        });
        $(".lazy").slick({
            lazyLoad: 'ondemand', // ondemand progressive anticipated
            infinite: true
        });
    });
</script>
</body>
</html>
