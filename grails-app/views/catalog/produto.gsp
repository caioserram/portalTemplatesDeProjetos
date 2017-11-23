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
                        <div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
                        <hr>
                        <div class="btn-group cart">
                            <button type="button" data-product-id="${product.id}" class="buy-btn">
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
                        <li><a href="#service-two" data-toggle="tab">AVALIAÇÕES</a></li>

                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="service-one">

                            <section class="container product-info">
                                ${product.description}
                                The Corsair Gaming Series GS600 power supply is the ideal price-performance solution for building or upgrading a Gaming PC. A single +12V rail provides up to 48A of reliable, continuous power for multi-core gaming PCs with multiple graphics cards. The ultra-quiet, dual ball-bearing fan automatically adjusts its speed according to temperature, so it will never intrude on your music and games. Blue LEDs bathe the transparent fan blades in a cool glow. Not feeling blue? You can turn off the lighting with the press of a button.

                                <h3>Corsair Gaming Series GS600 Features:</h3>
                                <li>It supports the latest ATX12V v2.3 standard and is backward compatible with ATX12V 2.2 and ATX12V 2.01 systems</li>
                                <li>An ultra-quiet 140mm double ball-bearing fan delivers great airflow at an very low noise level by varying fan speed in response to temperature</li>
                                <li>80Plus certified to deliver 80% efficiency or higher at normal load conditions (20% to 100% load)</li>
                                <li>0.99 Active Power Factor Correction provides clean and reliable power</li>
                                <li>Universal AC input from 90~264V — no more hassle of flipping that tiny red switch to select the voltage input!</li>
                                <li>Extra long fully-sleeved cables support full tower chassis</li>
                                <li>A three year warranty and lifetime access to Corsair’s legendary technical support and customer service</li>
                                <li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit Protection provide complete component safety</li>
                                <li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li>
                                <li>MTBF: 100,000 hours</li>
                                <li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>
                            </section>

                        </div>
                        <div class="tab-pane fade" id="service-two">

                            <section class="container">
                                %{--${product.reviews}--}%
                            </section>

                        </div>
                    </div>
                    <hr>

                    <div class="col-xs-12">

                        <g:set var="products" value="${portaltemplatesdeprojetos.Product.executeQuery("Select distinct p from Product p where p.category =:category and p.id != :id",[category:product.category,id:product.id])}" />

                        <g:if test="${products}">
                            <h4>Produtos relacionados</h4>
                            <g:each in="${products}" var="product">
                                <div class="col-md-3 col-sm-6">
                                    <span class="thumbnail">
                                        <img src="${product.image ?: "/assets/sem-imagem.jpg"}" alt="Imagem principal">
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
                            <h2>Nenhum produto no relacionado</h2>
                        </g:else>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
