Rails.application.routes.draw do
  resources :orders, except: [:edit, :update, :destroy]
  resources :line_items
  resources :carts
  resources :products
  resources :store, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  namespace :admin do
    resources :products
    resources :orders, except: [:new, :create]
  end

  root to: 'store#index'
end
