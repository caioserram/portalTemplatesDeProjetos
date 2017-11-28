<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="login.css"/>
    <asset:javascript src="login.js"/>
</head>

<body>

<div id="content" role="main">

    <div class="container">
        <h1>Pedido #${cart.id}</h1>

        <h2>Itens</h2>
        <g:each in="${cart.cartItems}" var="ci" >
            <ul>
                <li>
                    ${ci.name} - Clique <g:link controller="product" action="download" id="${ci.productId}">aqui</g:link><br> para baixar agora.
                </li>
            </ul>
        </g:each>
    </div>
</div>


<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
