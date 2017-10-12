package portaltemplatesdeprojetos

class CustomerController {

    def login() {
        if(request.get) {
            render(view: "login")
        } else {
            Customer customer = Customer.findByUsername(params.username)

            if(customer && customer.password == params.password) {
                session.customer = customer
                redirect(uri: params.url ?: "/")
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
