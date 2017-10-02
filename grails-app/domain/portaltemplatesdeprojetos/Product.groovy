package portaltemplatesdeprojetos

class Product {

    String name
    String description
    BigDecimal listPrice
    BigDecimal salePrice
    Category category
    List<Image> images

    static constraints = {
        salePrice nullable: true
        category nullable: true
    }
}
