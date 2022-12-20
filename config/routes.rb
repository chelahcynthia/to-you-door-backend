Rails.application.routes.draw do

  resources :orders, only: [:index]
  resources :restaurant_meals
  resources :meals, only: [:index]
  resources :customers, only: [:index]
  resources :restaurants, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
