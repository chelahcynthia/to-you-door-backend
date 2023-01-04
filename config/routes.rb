Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     resources :users, only: [:create]
  #     post '/login', to: 'auth#create'
  #     get '/profile', to: 'users#profile'
  #   end
  # end
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
