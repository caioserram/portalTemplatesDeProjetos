package portaltemplatesdeprojetos

class Cart {

    List<CartItem> cartItems
    Date dateCreated
    Customer customer
    boolean purchased = false

    static constraints = {
        customer nullable: true
    }

    public boolean valid() {
        return customer != null && !cartItems.isEmpty()
    }
}
