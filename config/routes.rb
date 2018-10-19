Rails.application.routes.draw do
  resources :cocktails, only: [:show, :new, :create, :index] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
