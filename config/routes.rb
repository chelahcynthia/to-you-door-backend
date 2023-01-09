Rails.application.routes.draw do
  resources :orders, only: [:index, :create]
  resources :restaurant_meals,only: [:index, :show, :destroy]
  resources :meals, only: [:index,:show, :update, :create]
  resources :customers
  resources :restaurants, only: [:index, :show, :destroy]
  resources :sessions, only: [:create, :destroy]
  post 'login', to: 'auth#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
