Rails.application.routes.draw do
  devise_for :users
  root to: "panier#index"
  resources :paniers, except: [:edit, :update] do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:destroy]



  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
