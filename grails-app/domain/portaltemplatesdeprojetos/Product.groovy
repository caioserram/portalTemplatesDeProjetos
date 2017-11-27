package portaltemplatesdeprojetos

class Product {

    String name
    String shortDescription
    String description
    BigDecimal price
    String image
    byte[] file
    String fileName

    Category category

    static constraints = {
        category nullable: true
        price nullable: true
        image nullable: true
    }
}
