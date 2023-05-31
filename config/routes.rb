Rails.application.routes.draw do
  resources :products, :orders
  root 'main#index'
end
