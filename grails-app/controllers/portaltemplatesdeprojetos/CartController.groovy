package portaltemplatesdeprojetos

class CartController {

    def index() {
        Customer customer = session.customer

        Cart cart = session.cart ?: Cart.findByCustomerAndPurchased(customer, false)

        if(!cart) {
            cart = new Cart(customer: customer)
        }

        session.cart = cart

        render(view:"carrinho", model:[cart: cart])
    }
}
