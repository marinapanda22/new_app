Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  resources :notices
  resources :posts
  resources :users
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
