Rails.application.routes.draw do
  resources :themes
  root to: 'themes#index'
  devise_for :users
  resources :users
end
