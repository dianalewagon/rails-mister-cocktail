Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :dose, only: [:new, :create]
  end
  resources :ingredient, only: [:index, :show]
end
