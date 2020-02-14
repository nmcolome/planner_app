Rails.application.routes.draw do
  root 'ingredients#index'
  resources :ingredients, except: [:delete]
  resources :recipes, only: [:index]
end
