package portaltemplatesdeprojetos

class Product {

    private static final MAX_SIZE = 1073741824 // 4GB

    String name
    String shortDescription
    String description
    BigDecimal price
    String image
    byte[] file
    String fileName

    Category category

    Date dateCreated

    static constraints = {
        category nullable: true
        price nullable: true
        image nullable: true
        dateCreated nullable: true
        file(maxSize: MAX_SIZE)
    }
}
