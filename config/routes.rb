Rails.application.routes.draw do
  # get 'users/index'
  root 'users#index'
  # get 'users/view'
  # get 'users/edit'
  # get 'users/show'
  # get '/users/:id', to: "users#show"
  resources :users
  # resources:users
  # resources:users, only: [:new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
