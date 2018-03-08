Rails.application.routes.draw do
  root 'products#index'


  match "/update_quantity/:product_id"              =>        "products#update_quantity",              via: [:patch],    as: "update_quantity"
  match "/shopping_cart"                            =>        "shopping_carts#index",                  via: [:get],      as: "shopping_carts"
end

