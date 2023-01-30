Rails.application.routes.draw do
  resources :carts
  resources :products
  root 'store#index', as: 'store_index'
end
