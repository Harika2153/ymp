Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index"
  root to:"main#index"
  get "signin", to: "registrations#old"
  get "signup", to: "registrations#new"
  # Defines the root path route ("/")
  # root "articles#index"
end