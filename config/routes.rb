Rails.application.routes.draw do
  resources :ingredients, except: [:delete]
end
