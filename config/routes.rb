Rails.application.routes.draw do
  root 'prototypes#index'
  resources :prototypes, only: %i(index show new)
end
