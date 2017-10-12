package portaltemplatesdeprojetos

class CheckoutController {

    def start() {
        Customer customer = session.customer

        Cart cart = session.cart ?: Cart.findByCustomerAndPurchased(customer, false)

        if(!cart) {
            flash.error = "Carrinho não encontrado."
            redirect(uri: "/")
        } else {
            render(view: "checkout")
        }
    }
}
