Rails.application.routes.draw do
  get 'carts/show'
  get 'cart_items/new'
  get 'cart_items/create'
  get 'cart_items/destroy'
  get 'top/main'
  get 'products/index'
  get 'products/new'
  get 'products/create'
  get 'products/destroy'
  resources :products
  #root 'products#index'
  root 'top#main'
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  delete 'cart_items/:id', to: 'cart_items#destroy'
  #get 'carts/:cart_id' ,to: 'cart#show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
