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
    <g:if test="${!cart}">
        <div class="bg-danger text-white">Erro ao carregar carrinho, recarregue a página.</div>
    </g:if>
    <g:else>
        <g:each in="${cart.cartItems}" var="cartItem">

        </g:each>
    </g:else>
</div>

    <div class="container">
        <g:if test="${!cart || !cart.cartItems?.size()}">
            <div class="bg-danger text-white">Não há itens no carrinho.</div>
            <a href="/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Volte a comprar</a>
        </g:if>
        <g:else>
            <table id="cart" class="table table-hover table-condensed">
                <thead>
                <tr>
                    <th style="width:50%">Product</th>
                    <th style="width:10%">Price</th>
                    <th style="width:8%">Quantity</th>
                    <th style="width:22%" class="text-center">Subtotal</th>
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
                        <td data-th="Price">R$ ${cartItem.price}</td>
                        <td data-th="Quantity">
                            <input type="number" class="form-control text-center" value="1">
                        </td>
                        <td data-th="Subtotal" class="text-center">${cartItem.price}</td>
                        <td class="actions" data-th="">
                            <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                            <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                        </td>
                    </tr>
                </g:each>
                </tbody>
                <tfoot>
                <tr class="visible-xs">
                    <td class="text-center"><strong>Total 1.99</strong></td>
                </tr>
                <tr>
                    <td><a href="/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Volte a comprar</a></td>
                    <td colspan="2" class="hidden-xs"></td>
                    <td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
                    <td><a href="${createLink(controller: "checkout", action: "start")}" class="btn btn-success btn-block">Ir para o checkout<i class="fa fa-angle-right"></i></a></td>
                </tr>
                </tfoot>
            </table>
        </g:else>
    </div>

<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
