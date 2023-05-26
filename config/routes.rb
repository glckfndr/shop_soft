Rails.application.routes.draw do
  get 'products/index'
  get 'orders/index'
  resources :products
  resources :orders
  root 'main#index'
end
