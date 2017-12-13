Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes do
    resource :likes, only: %i(create destroy)
  end

  resources :users, only: %i(show edit update)
end
