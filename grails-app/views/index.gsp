<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>NOVIDADES</h1>
        </section>

        <section class="row">

            <g:set var="products" value="${portaltemplatesdeprojetos.Product.list()}" />
            <g:if test="${products}">
                <div class="regular center" data-slick='{"slidesToShow": 3, "slidesToScroll": 3}'>
                <g:each in="${products}" var="product">
                    <g:if test="${product.image}">
                        <img src="${product.image}" alt="Imagem principal" />
                    </g:if>
                    <g:else>
                        <asset:image src="sem-imagem.jpg"/>
                    </g:else>
                    <br><span>${product.name}</span>
                    <br><g:formatNumber number="${product.listPrice}" type="currency" currencyCode="BRL" />
                </g:each>
                </div>
            </g:if>
            <g:else>
                <h2>Nenhum produto no momento</h2>
            </g:else>
        </section>
    </div>


<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
