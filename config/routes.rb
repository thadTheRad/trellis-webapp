Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "login", to: "devise/sessions#new", as: :login
    get "register", to: "devise/registrations#new", as: :register
    get "logout", to: "devise/sessions#destroy", as: :logout
  end
  get "up" => "rails/health#show", as: :rails_health_check
  root "landing_page#index", as: :landing
end
