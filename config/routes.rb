Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root "landing_page#index", as: :landing
end
