Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index"
  
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"
  
  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  
  delete "logout", to: "sessions#destroy"
  
  root to:"main#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
