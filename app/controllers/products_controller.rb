class ProductsController < ApplicationController
  before_action :set_shopping_cart
  
  def index
    @products = Product.all
  end

  def update_quantity
    puts params
    product = Product.find(params[:product_id])
    pc = ProductsShoppingCart.where(product_id: product.id, shopping_cart_id: @shopping_cart.id).first
    if pc.present?
      pc.product_quantity = params[:product_quantity].to_i
      pc.save
      # if you wanted it to add to existing cart instead of updating amount
          # amount_to_add = params[:product_quantity].to_i
          # pc.product_quantity += amount_to_add
          # pc.save
    else
      ProductsShoppingCart.create(product_id: product.id, shopping_cart_id: @shopping_cart.id, product_quantity: params[:product_quantity].to_i)
    end
    redirect_to root_path, notice: "Cart updated successfully"
  end

end