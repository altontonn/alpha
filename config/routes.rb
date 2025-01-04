Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#home'
  resources :articles, only: [:index, :create, :edit, :new, :update, :show, :destroy]
end
