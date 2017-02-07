Rails.application.routes.draw do

  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  #
  # get '/products', to: 'products#index'
  # get '/products/new', to: 'products#new'
  # get '/products/:id', to: 'products#show',
  # get '/products/:id/edit', to: 'products#edit', as: "edit"
  # post '/products', to: 'products#create'
  # post '/products/:id', to: 'products#update'
  # delete '/products/:id', to: 'products#destroy'

# get /products, to controller products action index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
