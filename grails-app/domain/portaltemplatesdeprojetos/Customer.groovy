package portaltemplatesdeprojetos

class Customer {

    String name
    String email
    Date birthDate

    static constraints = {
        birthDate nullable: true
    }
}
