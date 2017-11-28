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
        <h1>Detalhes da conta</h1>
        <p><b>Usuario :</b> ${customer.name}</p>
        <p><b>Email :</b> ${customer.email}</p>

        <br>
        <hr/>

        <h2>Favoritos</h2>
        <g:each in="${customer.wishList}" var="c" >
            <a href="/produto/${c.id}" ><div class="wishlist-item">
                <img src="${c.image}" alt=""><br>
                ${c.name} <br>
                ${c.shortDescription}


            </div></a>

        </g:each>


    </div>
</div>


<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
