class CreateJoinTableShoppingCartsProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products_shopping_carts do |t|

      t.integer :shopping_cart_id
      t.integer :product_id
      # t.index [:shopping_cart_id, :product_id]
      # t.index [:product_id, :shopping_cart_id]
      t.timestamps
    end
  end
end
