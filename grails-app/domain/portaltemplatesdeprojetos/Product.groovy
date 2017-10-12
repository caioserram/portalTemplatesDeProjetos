package portaltemplatesdeprojetos

class Product {

    String name
    String shortDescription
    String description
    BigDecimal price
    String image

    Category category

    static constraints = {
        salePrice nullable: true
        category nullable: true
        price nullable: true
    }
}
