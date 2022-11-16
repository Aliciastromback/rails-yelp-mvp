Rails.application.routes.draw do
  root to: "restaurants#index"

  get "restaurants", to: "restaurants#index"  #(controller#action)
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:restaurant_id", to: "restaurants#show", as: :restaurant

  get "restaurants/:restaurant_id/reviews", to: "reviews#index", as: :reviews
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :reviews_new
  post "restaurants/:restaurant_id/reviews", to: "reviews#create"
  get "restaurants/:restaurant_id/reviews/review_id", to: "reviews#show", as: :review
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
