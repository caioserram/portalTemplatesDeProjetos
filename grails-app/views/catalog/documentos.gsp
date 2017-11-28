<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="index.css"/>
    <asset:stylesheet src="font-awesome.css"/>
</head>

<body>

<div id="content" role="main">
    <div class="container">
        <g:if test="${products}">

            <h3>Todos documentos</h3>

            <div class="row">
                <g:each in="${products}" var="product">
                    <div class="col-md-3 col-sm-6">
                        <span class="thumbnail">
                            <img src="${product.image ?: "/assets/sem-imagem.jpg"}" alt="Imagem principal">
                            <h4>${product.name}</h4>

                            <p>${product.shortDescription}</p>
                            <hr class="line">

                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <button class="btn btn-danger right details-btn"
                                            data-product-id="${product.id}">DETALHES</button>
                                </div>

                                <div class="col-xs-12 col-sm-6">
                                    <button class="btn btn-success right buy-btn"
                                            data-product-id="${product.id}">COMPRAR</button>
                                </div>
                            </div>
                        </span>
                    </div>
                </g:each>
            </div>
        </g:if>
        <g:else>
            <h2>Nenhum produto no momento</h2>
        </g:else>
    </div>

</div>

<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
