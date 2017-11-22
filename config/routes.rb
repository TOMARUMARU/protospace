Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes, only: %i(index show new create)
  resources :users, only: %i(show edit update)
end
