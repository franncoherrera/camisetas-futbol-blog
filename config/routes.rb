Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root 'home#index'

  resources :shirts
  resources :positions
  resources :teams
  resources :profiles, only: [:show, :create, :edit]

  devise_for :users


  get "*unmatched_route", to: redirect("/"), status: 301, constraints: lambda { |request|
    !request.xhr? && request.format.html?
  }


end
