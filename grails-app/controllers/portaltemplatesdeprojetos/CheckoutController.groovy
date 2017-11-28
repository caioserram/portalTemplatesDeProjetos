package portaltemplatesdeprojetos

class CheckoutController {

    def mailService

    def purchase() {
        Customer customer = session.customer
        Cart cart = session.cart ?: Cart.findByCustomerAndPurchased(customer, false)

        log.info "Criando pedido para cliente ${customer.email}. Carrinho Id: ${cart.id}"

        if(cart && !cart.customer) {
            log.error "Carrinho $cart.id sem customer, pegando da sessão."
            cart.customer = customer
        }

        if(cart?.valid()) {
            mailCustomer(cart)
            cart.purchased = true

            if(!cart.save(flush: true)) {
                flash.error = "Erro ao processar pedido."
                log.error("Erro ao processar pedido. Errors: ${cart.errors}")
                redirect(controller: "cart", action:"index")
            } else {
                session.cart = null
                render(view: "purchased", model:[purchasedCart: cart])
            }
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
