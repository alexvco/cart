class AddProductQuantityToShoppingCartsProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products_shopping_carts, :product_quantity, :integer, default: 0
  end
end
