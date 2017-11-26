<%@ page import="portaltemplatesdeprojetos.Category" %>

<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Imperium - Loja Oficial</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="index.css" />
    <asset:stylesheet src="font-awesome.css" />
</head>
<body>

    <div id="content" role="main">

        <g:if test="${flash.error}">
            <div class="bg-danger text-white">${flash.error}</div>
        </g:if>

        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <g:form controller="product" action="save" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
                    <!-- Form Name -->
                    <legend>Detalhes do Produto</legend>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="name">Nome</label>
                        <div class="col-sm-10">
                            <input type="text" placeholder="Nome do produto" class="form-control" id="name" name="name" value="${product?.name}">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="shortDescription">Descrição curta</label>
                        <div class="col-sm-10">
                            <input type="text" placeholder="Descrição curta do produto" class="form-control" id="shortDescription" name="shortDescription" value="${product?.shortDescription}">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="image">Imagem</label>
                        <div class="col-sm-10">
                            <input type="text" placeholder="URL da imagem do produto" class="form-control" id="image" name="image" value="${product?.image}">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="description">Descrição</label>
                        <div class="col-sm-10">
                            <textarea rows="5" placeholder="Descrição completa do produto" class="form-control" id="description" name="description">${product?.description ?: ""}</textarea>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="category">Categoria</label>
                        <div class="col-sm-10">
                            <g:select from="${Category.list()}" name="category" noSelection="['':'- Selecione -']" optionValue="name" optionKey="id" />
                        </div>
                    </div>

                    <!-- Text input-->
                    <g:if test="${action == "create"}">
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="file">Arquivo</label>
                            <div class="col-sm-10">
                                <input id="file" name="file" type="file" />
                            </div>
                        </div>
                    </g:if>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="pull-right">
                                <button type="submit" class="btn btn-default">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Salvar</button>
                            </div>
                        </div>
                    </div>
                </g:form>

            </div><!-- /.col-lg-12 -->
        </div><!-- /.row -->


    </div>
<script type="text/javascript" src="//cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick.min.js"></script>
</body>
</html>
