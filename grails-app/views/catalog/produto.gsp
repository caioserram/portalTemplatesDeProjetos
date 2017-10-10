<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

<div id="content" role="main">
    <h1>Nome do documento: ${product.name}</h1>
    <g:if test="${product.image}">
        <img src="${product.image}" alt="Imagem principal" />
    </g:if>
    <g:else>
        <asset:image src="sem-imagem.jpg"/>
    </g:else>
</div>

<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
