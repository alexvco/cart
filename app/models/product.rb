class Product < ApplicationRecord
  has_many :products_shopping_carts
  has_many :shopping_carts, :through => :products_shopping_carts, source: :shopping_cart
end
