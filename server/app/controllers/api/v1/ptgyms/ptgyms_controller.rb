module Api
  module V1
    module Ptgyms
      class PtgymsController < ApplicationController
        before_action :authenticate_request_ptgym , only[:create]

        def index
          @ptgyms = Ptgym.all
          render json: @ptgyms
        end
 
        def show
          @ptgym = Ptgym.find(params[:id])
          render json: @ptgym
        end

        def create
          @ptgym = Ptgym.new(ptgym_params)
          if @ptgym.save
            # PtgymMailer.account_activation(@ptgym).deliver_now
            render json: {
              message: 'success',
              token: ::JsonWebToken.encode({
                                            ptgym_id: @ptgym.id
                                          })
            }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end

        def update
          @ptgym = Ptgym.find(params[:id])
          if @ptgym.update(ptgym_params)
            render json: @ptgym
          else
            render json: @ptgym.errors, status: :unprocessable_entity
          end
        end

        def destroy
          @ptgym.destroy
        end
      
        private
    
        def ptgym_params
          params.permit(:pt_name, :email, :password , :phoneNumber, :address, :age , :gender , :weight , :height , :academic_level, :tracked_route)
        end
      end
    end
  end
end

