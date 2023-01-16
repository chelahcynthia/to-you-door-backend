Rails.application.routes.draw do
  resources :orders, only: [:index, :create]
  resources :restaurant_meals,only: [:index, :show, :destroy]
  resources :meals, only: [:index,:show, :update, :create]
  resources :customers
  resources :restaurants, only: [:index, :show, :destroy]
  resources :carts, only: [:show]
  resources :sessions, only: [:create, :destroy]
  post 'login', to: 'auth#create'
end
