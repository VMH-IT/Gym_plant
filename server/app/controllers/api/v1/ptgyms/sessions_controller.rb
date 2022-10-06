module Api
  module V1
    module Ptgyms
      class SessionsController < ApplicationController
        def create
          @ptgym = Ptgym.find_by(email: params[:email])
          if @ptgym && @ptgym.valid_password?(params[:password])
            render json: {
							      			message: 'sucesss',
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
      end
    end
  end
end
