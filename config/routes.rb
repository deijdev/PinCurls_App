Rails.application.routes.draw do
  resources :users
  resources :favorites
  resources :post_tags
  resources :tags
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
