<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

    <div id="content" role="main">
        <g:if test="${products}">
            <section class="regular center" data-slick='{"slidesToShow": 3, "slidesToScroll": 3}'>
                <g:each in="${products}" var="product">
                    <div class="col-xs-4">
                        <a href="/produto"></a>
                        <g:if test="${product.image}">
                            <img src="${product.image}" alt="Imagem principal" />
                        </g:if>
                        <g:else>
                            <asset:image src="sem-imagem.jpg"/>
                        </g:else>
                        <br><span>${product.name}</span><br>
                        <a href="${createLink(uri:"/produto/$product.id")}">+ detalhes</a>
                    </div>
                </g:each>
            </section>
        </g:if>
        <g:else>
            <h2>Nenhum produto no momento</h2>
        </g:else>
    </div>

    <script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
