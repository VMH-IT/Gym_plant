Rails.application.routes.draw do
  devise_for :ptgyms
  devise_for :admins
  namespace :api do
    namespace :v1 do
      namespace :ptgyms do
        resources :sessions, only: [:create]
      end
      namespace :users do
        resources :admins
        resources :sessions
        resources :account_activations, only: [:edit]
        resources :route_packages
        resources :exercises

      end
    end
  end
end
