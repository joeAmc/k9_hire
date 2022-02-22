Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :dogs do
    resources :bookings, only: [:edit, :update, :create]

    end
      resources :bookings, only: [:destroy]
   end
