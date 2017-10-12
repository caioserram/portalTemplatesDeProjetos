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
                <section class="regular center" data-slick='{"slidesToShow": 3, "slidesToScroll": 3}'>
                <g:each in="${products}" var="product">
                    <div class="col-xs-4">
                        <img src="${product.image ?: "/assets/sem-imagem.jpg"}" alt="Imagem principal" />
                        <br><span>${product.name}</span><br>
                        <a href="${createLink(uri:"/produto/$product.id")}">+ detalhes</a>
                    </div>
                </g:each>
                </section>
            </g:if>
            <g:else>
                <h2>Nenhum produto no momento</h2>
            </g:else>
        </section>
    </div>


<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
