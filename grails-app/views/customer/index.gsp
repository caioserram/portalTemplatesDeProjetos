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
        <div class="row">
            <h1>Detalhes da conta</h1>
        </div>

        <br/>
        <div class="row">
            <b class="col-xs-1">Usuario:</b>
            <span class="col-xs-1">${customer.name}</span>
        </div>

        <div class="row">
            <b class="col-xs-1">Email:</b>
            <span class="col-xs-1">${customer.email}</span>
        </div>

        <br>
        <hr/>

        <div class="row">
            <h2>Favoritos</h2>
            <g:each in="${customer.wishList}" var="product">
                <div class="col-md-3 col-sm-6 product-thumb">
                    <span class="thumbnail product-thumb">
                        <img src="${product.image ?: "/assets/sem-imagem.jpg"}" alt="Imagem principal" style="max-height: 250px;">
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

        <h2>Pedidos</h2>
        <g:if test="${carts}">
            <table id="cart" class="table table-hover table-condensed">
                <thead>
                <tr>
                    <th>Número</th>
                    <th>Data</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${carts}" var="c">
                    <tr>
                        <td><a href="/pedido/${c.id}">
                            Detalhes pedido #${c.id}
                        </a></td>
                        <td><g:formatDate format="dd-MM-yyyy" date="${c.dateCreated}"/></td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </g:if>
        <g:else>
            <p>Não há pedidos.</p>
        </g:else>
    </div>
</div>


<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
