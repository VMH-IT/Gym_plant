module Api
  module V1
    module Users
      class AdminsController < ApplicationController
        def index 
          @admin = Admin.all
          render json: @admin  
        end

        def show
          @admin = Admin.find(params[:id])
          render json: @admin
        end

        def create
          @admin = Admin.new(admin_params)
          if @admin.save
            render json: {
              message: 'success',
              token: ::JsonWebToken.encode({
                                            sub: @admin.id
                                            })
              }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end

        def update
          if @admin.update(user_params)
            render json: @admin
          else
            render json: @admin.errors, status: :unprocessable_entity
          end
        end

        private

        def admin_params
          params.permit(:email, :password)
        end

      end
    end
  end
end
