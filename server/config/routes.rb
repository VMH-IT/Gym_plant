Rails.application.routes.draw do
  devise_for :ptgyms
  devise_for :gymers
  devise_for :admins
  namespace :api do
    namespace :v1 do
      namespace :users do
        resources :users
        resources :admins
        resources :sessions
        resources :ptgyms do
          collection do
            post :sign_in
          end
        end
        resources :account_activations, only: [:edit]
        resources :exercises
        resources :gymers
      end
      # namespace :gymers do
      #   resources :gymers
      # end
    end
  end
end
