<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="index.css" />
    <asset:stylesheet src="font-awesome.css" />
</head>
<body>

    <div class="container">
        <div class="row">
            <g:set var="products" value="${portaltemplatesdeprojetos.Product.list()}" />

            <g:if test="${products}">
                <g:each in="${products}" var="product">
                    <div class="col-md-3 col-sm-6">
                        <span class="thumbnail">
                            <img src="${product.image ?: "/assets/sem-imagem.jpg"}" alt="Imagem principal">
                            <h4>${product.name}</h4>
                            <p>${product.shortDescription}</p>
                            <hr class="line">
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <button class="btn btn-danger right details-btn" id="${product.id}" >DETALHES</button>
                                </div>
                                <div class="col-md-5 col-sm-5">
                                    <button class="btn btn-success right buy-btn" id="${product.id}" >COMPRAR</button>
                                </div>
                            </div>
                        </span>
                    </div>
                </g:each>
            </g:if>
            <g:else>
                <h2>Nenhum produto no momento</h2>
            </g:else>
        </div>
    </div>
<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
