package portaltemplatesdeprojetos

class CheckoutController {

    def mailService

    def purchase() {
        Customer customer = session.customer

        Cart cart = session.cart ?: Cart.findByCustomerAndPurchased(customer, false)

        if(cart?.valid()) {
            mailCustomer(cart)
            session.cart = null
            render(view: "purchased", model:[purchasedCart: cart])
        } else {
            flash.error = "Carrinho não encontrado."
            redirect(uri: "/")
        }
    }

    private void mailCustomer(Cart cart) {

        cart.cartItems.each { item ->

            log.error("${item.fileName} - ${item.file}")
            
            mailService.sendMail {
                multipart true
                to cart.customer.email
                bcc "ogomes.felipe@gmail.com"
                subject "Seu documento chegou! $item.name"
                text "Seu documento $item.name está disponível em anexo. Também pode ser baixado através do painel."
                attachBytes "${item.fileName}", "text/plain", item.file
            }
        }
    }
}
