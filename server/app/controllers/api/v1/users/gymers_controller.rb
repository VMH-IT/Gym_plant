module Api
  module V1
    module Users
      class GymersController < ApplicationController
            
        def index 
          @gymer = Gymer.all
          render json: @gymer  
        end
              
        def show 
        end

        def sign_in
          @gymer = Gymer.find_by(email: params[:email])
          if @gymer && @gymer.valid?(params[:password])
            render json: {
              message: 'sucesss',
              token: ::JsonWebToken.encode({
                                          sub: @gymer.id
                                          })
              }
          else
            render json: {
              message: 'failed' 
            }, status: 400
          end
        end
        def create
          @gymer = Gymer.new(gymer_params)
          if @gymer.save
            # gymerMailer.account_activation(@gymer).deliver_now
            render json: {
              message: 'success',
              token: ::JsonWebToken.encode({
                                            sub: @gymer.id
                                          })
            }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end
      end
    end
  end
end