Rails.application.routes.draw do
  # resources :sessions
  resources :users
  resources :favorites
  resources :post_tags
  resources :tags
  resources :posts
  get '/',  to: "application#homepage"
  get '/login', to: "sessions#login"
  post '/login', to: "sessions#process_login"
  get 'logout', to: "sessions#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
