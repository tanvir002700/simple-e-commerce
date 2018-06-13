Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resources :products
  resources :store
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, only: [:index]
  root to: 'home#index'
end
