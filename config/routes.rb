Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes do
    resource :likes, only: %i(create destroy)
    resource :comments, onky: %i(new create)
  end
  resources :users, only: %i(show edit update)
  resources :newests, only: %i(index)
end
