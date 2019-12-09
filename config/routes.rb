Rails.application.routes.draw do
  root "home#index"

  devise_for :users

  namespace :admin do
    get "/dashboard", to: "admin/dashboard#index", as: "dashboard"
  end
end
