Rails.application.routes.draw do
 
  resources :sellers
  get 'users/index'
  resources :orders
  resources :products
  resources :categories
  devise_for :users
  root to: "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
