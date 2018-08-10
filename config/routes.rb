Rails.application.routes.draw do
  get 'reviews/create'
  root 'cocktails#index'
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[create destroy]
    resources :reviews, only: %i[create]
  end
end
