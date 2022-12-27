Rails.application.routes.draw do
  resources :mining_types
  get 'welcome/index'
  resources :coins
  #get '/inicio', to: 'welcome#index'

  root "welcome#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
