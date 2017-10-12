package portaltemplatesdeprojetos

class Customer {

    String username
    String password

    String name
    String email
    String document
    Date birthDate

    static constraints = {
        document blank: true, nullable: true
        birthDate blank: true, nullable: true
    }
}
