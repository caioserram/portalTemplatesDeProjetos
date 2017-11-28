package portaltemplatesdeprojetos

class CheckoutController {

    def mailService

    def purchase() {
        Customer customer = session.customer

        Cart cart = session.cart ?: Cart.findByCustomerAndPurchased(customer, false)

        if(cart && !cart.customer) {
            cart.customer = customer
        }

        if(cart?.valid()) {
            mailCustomer(cart)
            cart.purchased = true
            cart.save(flush: true)
            session.cart = null
            render(view: "purchased", model:[purchasedCart: cart])
        } else {
            flash.error = "Carrinho não encontrado."
            redirect(uri: "/")
        }
    }

    private void mailCustomer(Cart cart) {

        cart.cartItems.each { item ->

            log.info("Enviando email para o cliente ${cart.customer.email}: ${item.fileName}")

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
