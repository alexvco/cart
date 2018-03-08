class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_shopping_cart
    if !session[:shopping_cart].present?
      shopping_cart = ShoppingCart.create
      session[:shopping_cart] = shopping_cart.id
      @shopping_cart = ShoppingCart.find(session[:shopping_cart])
    else
      @shopping_cart = ShoppingCart.find(session[:shopping_cart])
    end
  end
  
end
