Rails.application.routes.draw do
  get 'dashboard', to: 'regusers/bookings#index', as: 'dashboard'

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dogs do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end
