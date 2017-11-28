package portaltemplatesdeprojetos

import grails.converters.JSON

class CartController {

    def mailService

    def index() {
        render(view:"carrinho", model:[cart: getCart()])
    }

    def add(Long id) {
        Cart cart = getCart()
        Map responseMap

        if(cart.cartItems?.any {it.productId == id}) {

            responseMap = [success: false, error: "Produto já foi adicionado ao carrinho."]

        } else {
            Product product = Product.read(id)

            CartItem cartItem = new CartItem(name: product.name,
                    price: product.price, description: product.description, shortDescription: product.shortDescription,
                    category: product.category?.name, image: product.image, productId: id, file: product.file,
                    fileName: product.fileName)

            cartItem.save()

            cart.addToCartItems(cartItem)

            if (!cart.save(flush: true)) {
                session.cart = cart
                responseMap = [success:true]
            } else {
                responseMap = [success:false, error: cart.errors]
            }
        }

        render responseMap as JSON
    }

    def remove(Long id) {
        Cart cart = getCart()
        Map responseMap

        cart.cartItems.removeAll { it.productId == id}
        cart = cart.save(flush:true)

        responseMap = [success: cart != null]

        render responseMap as JSON
    }

    private Cart getCart() {
        Cart cart = session.cart
        Customer customer = session.customer

        if(!cart && customer) {
            cart = Cart.findByCustomerAndPurchased(customer, false) ?: new Cart(customer: customer)
            session.cart = cart
        } else if (!cart) {
            cart = new Cart()
            session.cart = cart
        }

        return cart
    }

    def teste() {
        log.info "Iniciando envio de email"

        mailService.sendMail {
            to "ogomes.felipe@gmail.com"
            cc "felipe.deoliveira@b2wdigital.com"
            subject "Aplicação funciona rulez"
            text 'Corpo da mensagem.....!'
        }
    }
}
