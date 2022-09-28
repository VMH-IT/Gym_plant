module Api
  module V1
    module Users
      class UsersController < ApplicationController
        before_action :set_user, only: %i[ show update destroy ]

        def index
          @users = User.all
          render json: @users
        end
 
        def show
          unless current_user
            return render json: {
              message: 'you need to sign in'
              }, status: 403
          end
          user = User.find(params[:id])
          render json: @user
        end

        def create
          @user = User.new(user_params)
          if @user.save
            UserMailer.account_activation(@user).deliver_now
            render json: {
              message: 'success',
              token: ::JsonWebToken.encode({
                                            sub: @user.id
                                          })
            }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end

        def sign_in
          @user = User.find_by(email: params[:email])
          if @user && @user.valid?(params[:password])
            render json: {
              message: 'sucesss',
              token: ::JsonWebToken.encode({
                                          sub: @user.id
                                        })
            }
          else
            render json: {
              message: 'failed' 
            }, status: 400
          end
        end

        def update
          if @user.update(user_params)
            render json: @user
          else
            render json: @user.errors, status: :unprocessable_entity
          end
        end

        def destroy
          @user.destroy
        end
      
        private

        def set_user
          @user = User.find(params[:id])
        end
    
        def user_params
          params.permit(:name, :email, :password)
        end

        def correct_user
          @user = User.find(params[:id])
          redirect_to(root_url) unless current_user?(@user)
                                end
                                
          def admin_user
            redirect_to(root_url) unless current_user.admin?
                                  end
          end
        end
      end
    end
  end
end

