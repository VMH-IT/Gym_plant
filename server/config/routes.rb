Rails.application.routes.draw do
  devise_for :gymers
  devise_for :admins
  namespace :api do
    namespace :v1 do
      namespace :users do
        resources :users
        resources :admins
        resources :sessions
        resources :account_activations, only: [:edit]
        resources :exercises
      end
      namespace :gymers do
        resources :gymers
      end
    end
  end
end
