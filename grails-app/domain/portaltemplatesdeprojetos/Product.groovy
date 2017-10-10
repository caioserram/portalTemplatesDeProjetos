package portaltemplatesdeprojetos

class Product {

    String name
    String description
    BigDecimal listPrice
    BigDecimal salePrice
    Category category
    String image

    static constraints = {
        salePrice nullable: true
        category nullable: true
    }
}
