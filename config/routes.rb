Rails.application.routes.draw do
  # get 'users/index'
  root 'users#index'
  # get 'users/:id/edit'
  #  get 'user', to:'users#show' 
  # patch '/users/:id'
  # delete '/users/:id'
   resources :users
  # resource: user
  # resolve('users') {[:user]}
  # resolve('Geocoder') { [:geocoder] }
  # resources:users
  # resources:users, only: [:new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
