Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes, only: %i(index show new)
  resources :users, only: %i(edit update)
end
