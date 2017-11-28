<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>

<div id="content" role="main">
    <div class="container">
        <h1>Detalhes do pedido - <g:formatDate format="dd-MM-yyyy" date="${purchasedCart.dateCreated}"/></h1>

        <table id="cart" class="table table-hover table-condensed">
            <thead>
            <tr>
                <th>Documentos</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${purchasedCart.cartItems}" var="item">

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
                        <button class="btn btn-success btn-sm"><g:link controller="product" action="download"
                                                                       id="${item.productId}">Baixar</g:link></button>
                    </td>
                </tr>

            </g:each>
            </tbody>
        </table>

        <h2>Um e-mail com os documentos foi encaminhando para sua caixa de entrada, e você deverá recebê-lo em instantes.</h2>
    </div>
</div>

<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
