Rails.application.routes.draw do
  root to: "restaurants#index"

  get "restaurants", to: "restaurants#index"  #(controller#action)
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show"

  get "restaurants/:id/reviews/new", to: "reviews#new"
  post "restaurants/:id/reviews", to: "reviews#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
