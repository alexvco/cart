class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart

  def index
    @myproducts = ProductsShoppingCart.includes(:product).where(shopping_cart_id: @shopping_cart.id).all
  end

end