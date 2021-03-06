Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :drones
  resources :bookings, only: [:index, :create] do
    resources :reviews, only: [:new, :create ]
  end

  resources :drones do
    resources :photos, only: [:new, :create]

  end


end
