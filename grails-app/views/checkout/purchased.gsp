<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

<div id="content" role="main">
    <h1>Detalhes do pedido</h1>

    <ul>
        <g:each in="${purchasedCart.cartItems}" var="item">
            <li>${item.name}</li>
        </g:each>
    </ul>

    <h2>Um e-mail com os documentos foi encaminhando para sua caixa de entrada, e você deverá recebê-lo em instantes.</h2>
</div>

<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
