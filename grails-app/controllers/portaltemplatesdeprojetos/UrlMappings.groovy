package portaltemplatesdeprojetos

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/produto/$id"(controller: "catalog", action: "product")
        "/documentos"(controller: "catalog", action: "products")
        "/contato"(view:"/contato")
        "/carrinho"(controller: "cart", action:"index")
        "/sair"(controller: "customer", action: "logout")
        "/busca"(controller: "catalog", action: "search")

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
