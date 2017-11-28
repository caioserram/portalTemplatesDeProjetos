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
        <h1>Pedido #${cart.id} - <g:formatDate format="dd-MM-yyyy" date="${cart.dateCreated}"/></h1>

        <table id="cart" class="table table-hover table-condensed">
            <thead>
            <tr>
                <th>Itens</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${cart.cartItems}" var="item">

                <tr>
                    <td data-th="Product">
                        <div class="row">
                            <div class="col-sm-2 hidden-xs"><img src="${item.image}" alt="imagem"
                                                                 class="img-responsive"/>
                            </div>

                            <div class="col-sm-10">
                                <h4 class="nomargin">${item.name}</h4>

                                <p>${item.description}</p>
                            </div>
                        </div>
                    </td>
                    <td class="actions" data-th="">
                        <g:link controller="product" action="download"
                                id="${item.productId}"><button class="btn btn-success btn-sm">Baixar</button>
                        </g:link>
                    </td>
                </tr>

            </g:each>
            </tbody>
        </table>
    </div>
</div>


<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
