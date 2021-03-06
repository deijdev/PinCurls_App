Rails.application.routes.draw do
  # resources :sessions
  resources :users, only: [:create, :show, :new, :edit, :update, :destroy]
  resources :favorites, only: [:create]
  # resources :post_tags
  resources :posts
  resources :tags, only: [:new, :show, :create]
  
  root to: "posts#index"
  get '/user_homepage', to: "users#user_homepage"
  get '/login', to: "sessions#login"
  post '/login', to: "sessions#process_login"
  get '/logout', to: "sessions#logout"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
