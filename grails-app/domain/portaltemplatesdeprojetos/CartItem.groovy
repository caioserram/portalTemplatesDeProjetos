package portaltemplatesdeprojetos

class CartItem {

    private static final MAX_SIZE = 1073741824 // 4GB

    String name
    String description
    String shortDescription
    String category
    String image
    Long productId

    byte[] file
    String fileName

    static constraints = {
        file(maxSize: MAX_SIZE)
    }
}
