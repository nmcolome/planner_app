Rails.application.routes.draw do
  resources :ingredients, only: [:index, :show, :edit, :update]
end
