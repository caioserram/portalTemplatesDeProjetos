package portaltemplatesdeprojetos

class Category {

    String name

    static hasMany = [products: Product]

    static constraints = {
    }
}
