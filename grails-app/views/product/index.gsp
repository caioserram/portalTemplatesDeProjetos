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

            <g:if test="${flash.message}">
                <div class="bg-danger text-white">${flash.message}</div>
            </g:if>
            <g:if test="${flash.error}">
                <div class="bg-danger text-white">${flash.error}</div>
            </g:if>

            <g:each in="${products}" var="product">

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
