<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="carrinho.css"/>
</head>
<body>

<div id="content" role="main">
    <div class="container">
        <g:if test="${flash.error}">
            <div class="bg-danger text-white">${flash.error}</div>
        </g:if>
        <g:if test="${!cart || !cart.cartItems?.size()}">
            <h2>Não há itens no carrinho.</h2>
            <td><a href="/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Volte a comprar</a>
        </g:if>
        <g:else>
            <table id="cart" class="table table-hover table-condensed">
                <thead>
                <tr>
                    <th style="width:50%">Documentos</th>
                    <th style="width:10%"></th>
                    <th style="width:8%"></th>
                    <th style="width:22%" class="text-center"></th>
                    <th style="width:10%"></th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${cart.cartItems}" var="cartItem">
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-sm-2 hidden-xs"><img src="${cartItem.image}" alt="imagem" class="img-responsive"/></div>
                                <div class="col-sm-10">
                                    <h4 class="nomargin">${cartItem.name}</h4>
                                    <p>${cartItem.description}</p>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price"></td>
                        <td data-th="Quantity">

                        </td>
                        <td data-th="Subtotal" class="text-center"></td>
                        <td class="actions" data-th="">
                            <button class="btn btn-danger btn-sm remove-from-cart" data-cart-id="${cart.id}" data-product-id="${cartItem.productId}">Remover</button>
                        </td>
                    </tr>
                </g:each>
                </tbody>
                <tfoot>
                <tr>
                    <td><a href="/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Volte a comprar</a></td>
                    <td colspan="2" class="hidden-xs"></td>
                    <td class="hidden-xs text-center"></td>
                    <td><a href="${createLink(controller: "checkout", action: "purchase")}" class="btn btn-success btn-block">Finalizar pedido<i class="fa fa-angle-right"></i></a></td>
                </tr>
                </tfoot>
            </table>
        </g:else>
    </div>
</div>
<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
