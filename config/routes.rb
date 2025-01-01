Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'articles#index'
  resources :articles, only: [:index, :create, :edit, :new, :show, :destroy]
end