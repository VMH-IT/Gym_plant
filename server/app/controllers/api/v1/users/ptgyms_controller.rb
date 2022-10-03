module Api
  module V1
    module Users
      class PtgymsController < ApplicationController
        before_action :set_ptgym, only: %i[ show update destroy ]

        def index
          @ptgyms = Ptgym.all
          render json: @ptgyms
        end
 
        def show
          unless current_ptgym
            return render json: {
              message: 'you need to sign in'
              }, status: 403
          end
          ptgym = Ptgym.find(params[:id])
          render json: @ptgym
        end

        def create
          @ptgym = Ptgym.new(ptgym_params)
          if @ptgym.save
            # PtgymMailer.account_activation(@ptgym).deliver_now
            render json: {
              message: 'success',
              token: ::JsonWebToken.encode({
                                            sub: @ptgym.id
                                          })
            }
          else
            render json: {
              message: 'failed'
            }, status: 400
          end
        end

        def sign_in
          @ptgym = Ptgym.find_by(email: params[:email])
          if @ptgym && @ptgym.valid_password?(params[:password])
            render json: {
              message: 'sucesss',
              token: ::JsonWebToken.encode({
                                          sub: @ptgym.id
                                        })
            }
          else
            render json: {
              message: 'failed' 
            }, status: 400
          end
        end

        def update
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

        def set_ptgym
          @ptgym = Ptgym.find(params[:id])
        end
    
        def ptgym_params
          params.permit(:pt_name, :email, :password , :phoneNumber, :address, :age , :gender , :weight , :height , :academic_level, :tracked_route)
        end

        def correct_ptgym
          @ptgym = Ptgym.find(params[:id])
          redirect_to(root_url) unless current_ptgym?(@ptgym)
                                
                                
          def admin_ptgym
            redirect_to(root_url) unless current_ptgym.admin?
                                  
          end
        end
      end
    end
  end
end

