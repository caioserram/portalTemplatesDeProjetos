package portaltemplatesdeprojetos



import grails.converters.JSON

class CustomerController {

    def index() {
        Customer customer = session.customer

        render(view: "index", model:[customer: customer])
    }

    def wishlist() {
        Customer customer = session.customer
        Integer max = params.max ? params.max as Integer : 5
        Integer offset = params.offset ? params.offset as Integer : 0

        List<Product> products = customer.getWishList()

        //System.out.println(products)

        render(view:"wishlist.gsp", model:[products: products])
    }

    def add(Long id) {
        Customer customer = session.customer
        Map responseMap
        if(customer.wishList?.any {it.id == id}) {

            responseMap = [success: false, error: "Produto já foi adicionado ao Wish List."]

        } else {
            Product product = Product.read(id)

            customer.addTo('wishList',product)

            responseMap = [success:true]
        }

        render responseMap as JSON
    }


    def login() {
        if(request.get) {
            render(view: "login")
        } else {
            Customer customer = Customer.findByUsername(params.username)

            if(customer && customer.password == params.password) {
                session.customer = customer
                redirect(params.url ? [uri: params.url] : [action: "index"])
            } else {
                flash.error = "Usuário e/ou senha incorretos."
                render(view: "login")
            }
        }
    }


    def register() {
        if(params.password == params.confirmPassword) {
            Customer customer = new Customer(name: params.name,
                    username: params.email,
                    password: params.password,
                    email: params.email,
                    document: params.document,
                    birthDate: params.birthDate)

            if(customer.save(flush: true, failOnError:true)) {
                session.customer = customer
                redirect(uri: params.url ?: "/")
            } else {
                flash.error = "Erro ao criar conta."
                render(view: "login")
            }
        } else {
            flash.error = "As senhas digitadas não são iguais."
            render(view: "login")
        }
    }

    def logout() {
        session.customer = null
        redirect(uri:"/")
    }
}
