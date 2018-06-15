Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :orders, except: [:edit, :update, :destroy]
  resources :line_items, only: [:create]
  resources :carts, only: [:show, :destroy]
  resources :products, only: [:show]
  resources :store, only: [:index]

  namespace :admin do
    resources :products
    resources :orders, except: [:new, :create]
  end

  root to: 'store#index'
end
