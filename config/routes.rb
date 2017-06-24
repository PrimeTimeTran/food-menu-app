Rails.application.routes.draw do
  devise_for :users

  resources :orders
  resources :order_items

  resources :food_items do
      resources :reviews
    end

  get 'menu' => 'home#menu'
  get 'contact_us' => 'home#contact_us'
  root 'home#index'
end
