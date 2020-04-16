Rails.application.routes.draw do
  # resources :sessions
  resources :users, only: [:create, :show, :new, :edit, :update]
  resources :favorites
  resources :post_tags
  resources :tags, only: [:new, :show, :create]
  resources :posts
  get '/',  to: "posts#index"
  get '/user_homepage', to: "users#user_homepage"
  get '/login', to: "sessions#login"
  post '/login', to: "sessions#process_login"
  get '/logout', to: "sessions#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
