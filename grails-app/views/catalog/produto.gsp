<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="produto.css"/>
</head>
<body>
<div class="container-fluid">
    <div class="content-wrapper">
        <div class="item-container">
            <div class="container">
                <div class="col-md-12">
                    <div class="product col-md-3 service-image-left">
                        <center>
                            <img id="item-display" src="${product.image ?: "/assets/sem-imagem.jpg"}" alt=""></img>
                        </center>
                    </div>
                </div>

                <div class="col-md-7">
                    <div class="product-title">${product.name}</div>
                    <div class="product-desc">${product.shortDescription}</div>
                    <hr>
                    <div class="btn-group cart">
                        <button type="button" class="buy-btn btn btn-success" data-product-id="${product.id}">
                            Adicionar ao carrinho
                        </button>
                    </div>
                    <div class="btn-group wishlist">
                        <button id="wishlist" type="button" class="btn btn-danger" data-product-id="${product.id}">
                            Salvar para depois
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="col-md-12 product-info">
                <ul id="myTab" class="nav nav-tabs nav_tabs">

                    <li class="active"><a href="#service-one" data-toggle="tab">DESCRIÇÃO</a></li>

                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="service-one">

                        <section class="container product-info">
                            ${product.description}
                        </section>

                    </div>
                </div>
                <hr>

                <div class="col-xs-12">

                    <g:set var="products" value="${portaltemplatesdeprojetos.Product.executeQuery("Select distinct p from Product p where p.category =:category and p.id != :id",[category:product.category,id:product.id])}" />

                    <g:if test="${products}">
                        <h4>Produtos relacionados</h4>
                        <g:each in="${products}" var="product">
                            <div class="col-md-3 col-sm-6" style="min-height: 180px;">
                                <span class="thumbnail" style="min-height: 180px;">
                                    <img src="${product.image ?: "/assets/sem-imagem.jpg"}" alt="Imagem principal" style="height: 180px;">
                                    <h4>${product.name}</h4>
                                    <p>${product.shortDescription}</p>
                                    <hr class="line">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6">
                                            <button class="btn btn-danger right details-btn" data-product-id="${product.id}" >DETALHES</button>
                                        </div>
                                        <div class="col-md-5 col-sm-5">
                                            <button class="btn btn-success right buy-btn" data-product-id="${product.id}" >COMPRAR</button>
                                        </div>
                                    </div>
                                </span>
                            </div>
                        </g:each>
                    </g:if>
                    <g:else>
                        <h2>Nenhum produto relacionado</h2>
                    </g:else>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
