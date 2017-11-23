grails {
    mail {
        host = "smtp.gmail.com"
        port = 465
        username = "imperium.store.uff@gmail.com"
        password = "ImPeriUm-UfF"
        props = ["mail.smtp.auth":"true",
                 "mail.smtp.socketFactory.port":"465",
                 "mail.smtp.socketFactory.class":"javax.net.ssl.SSLSocketFactory",
                 "mail.smtp.socketFactory.fallback":"false"]
    }
    env{
        custom {
            disable.auto.recompile=false
            grails.gsp.enable.reload=true
        }
    }
}

grails.mail.default.from = "imperium.store.uff@gmail.com"