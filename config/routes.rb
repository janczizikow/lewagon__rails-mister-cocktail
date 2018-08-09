Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, only: %i[index show new create]
end
