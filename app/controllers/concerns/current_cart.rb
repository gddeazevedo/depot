module CurrentCart
  private
    # set_cart is a hook method
    def set_cart
      @cart = Cart.find(session[:cart_id])
    rescue
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end
