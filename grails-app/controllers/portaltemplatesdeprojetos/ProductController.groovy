package portaltemplatesdeprojetos

class ProductController {

    def mailService

    def index() {
        Integer max = params.max ? params.max as Integer : 10
        Integer offset = params.offset ? params.offset as Integer : 0

        List<Product> products = Product.list([max: max, offset: offset])

        render(view:"index.gsp", model:[products: products])
    }

    def create() {
        render(view:"edit.gsp", model: [action: "create"])
    }

    def edit() {
        Product product
        if(params.id) {
            product = Product.read(params.id)
        }

        if(product) {
            render(view:"edit.gsp", model: [product: product, action: "edit"])
        } else {
            flash.error = "Produto não encontrado."
            redirect(action: "index")
        }
    }

    def save() {
        Product product = new Product()

        byte[] file = request.getFile("file").bytes
        bindData(product, params)
        product.file = file
        product.category = Category.get(params.category)

        if(!product.save(flush: true)) {
            flash.error = "Erro ao salvar produto."
            render(view: "edit.gsp", model:[product: product, action: "create"])
        } else {
            flash.message = "Produto criado com sucesso."
            redirect(action: "index")
        }
    }

    def teste() {
        log.info "Iniciando envio de email"

        Product product = Product.get(params.id)

        log.error "@@@ Recompilou #### "

        mailService.sendMail {
            multipart true
            to "ogomes.felipe@gmail.com"
            cc "felipe.deoliveira@b2wdigital.com"
            subject "Documento $product.name"
            text 'Corpo da mensagem.....!'
            attachBytes "${product.name}.c", "text/plain", product.file
        }
    }

}
