Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root 'home#index'
  
  devise_for :users

  resources :shirts
  resources :profiles, only: [:show, :create, :edit, :update]
  get '/my_shirts/:id', to: 'profiles#my_shirts', as: :my_shirts
  
  resources :teams
  resources :positions


  get "*unmatched_route", to: redirect("/"), status: 301, constraints: lambda { |request|
    !request.xhr? && request.format.html?
  }


end
