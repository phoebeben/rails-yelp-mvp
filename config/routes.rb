Rails.application.routes.draw do
  get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
end
