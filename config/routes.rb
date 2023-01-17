Rails.application.routes.draw do
  resources :orders, only: [:index, :create]
  resources :restaurant_meals,only: [:index, :show, :destroy]
  resources :meals, only: [:index,:show, :update, :create]
  resources :customers, only: [:index, :show, :update, :destroy]
  resources :restaurants, only: [:index, :show, :destroy]
  resources :sessions, only: [:create, :destroy]
  post '/login', to: 'auth#create'
  post '/signup', to: 'customers#create'
  post '/mpesa', to: 'm_pesa#create'
end
