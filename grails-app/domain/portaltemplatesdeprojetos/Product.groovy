package portaltemplatesdeprojetos

class Product {

    String name
    String shortDescription
    String description
    BigDecimal price
    String image

    Category category

    static constraints = {
        category nullable: true
        price nullable: true
        image nullable: true
    }
}
