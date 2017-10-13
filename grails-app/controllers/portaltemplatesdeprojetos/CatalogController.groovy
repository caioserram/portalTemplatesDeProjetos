package portaltemplatesdeprojetos

import grails.gorm.PagedResultList

class CatalogController {

    def product(Long id) {

        Product product = Product.read(id)

        if(product) {
            render(view: "produto", model: [product: product])
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

    def search() {

        Integer max = params.max ? params.max as Integer : 2
        Integer offset = params.offset ? params.offset as Integer : 0
        String query = params.query

        log.info "max: $max"

        PagedResultList<Product> pagedResult = Product.createCriteria().list(max: max, offset: offset) {
            if(query) {
                or {
                    ilike("name", "%${query}%")
                    ilike("description", "%${query}%")
                }
            }
        }

        render(view: "busca", model:[products: pagedResult.toList(), productCount: pagedResult.totalCount, max: max, offset: offset])
    }
}
