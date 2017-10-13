package portaltemplatesdeprojetos


class SecurityInterceptor {

    SecurityInterceptor() {
        matchAll()
                .except(controller:'customer', action:'login')
                .except(controller:'customer', action:'register')
                .except(controller: 'catalog')
                .except(controller: 'cart')
                .except(uri: "/")
                .except(uri: "/contato")
                .except(uri: "/carrinho")
    }

    boolean before() {
        if (!session.customer && actionName != "login") {
            log.error("Usuário não logado.")

            if(!request.forwardURI.contains("login"))
                flash.error = "Usuário não autorizado, por favor, identifique-se."

            redirect(controller: "customer", action: "login", params: [url: request.forwardURI])
            return false
        }
        return true
    }

}