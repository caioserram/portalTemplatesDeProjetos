package portaltemplatesdeprojetos

class CatalogController {

    def product(Long id) {

        Product product = Product.read(id)

        if(product) {
            render(view: "produto.gsp", model: [product: product])
        } else {
            flash.errorMessage = "Produto não encontrado."
            redirect(uri:"/")
        }
    }

    def products() {

        Integer max = params.max ? params.max as Integer : 5
        Integer offset = params.offset ? params.offset as Integer : 0

        List<Product> products = Product.list(max: max, offset: offset)

        render(view:"documentos.gsp", model:[products: products])

    }
}
