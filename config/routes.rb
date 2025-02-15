Rails.application.routes.draw do
  resources :comments
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#home'
  resources :articles, only: [:index, :create, :edit, :new, :update, :show, :destroy]
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :categories, only: [:new, :create, :edit, :update, :index, :show], except: [:destroy]

end
