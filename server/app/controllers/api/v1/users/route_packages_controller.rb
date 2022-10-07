module Api
  module V1
    module Users
      class RoutePackagesController < ApplicationController
				def create
          @route_package = Route_package.new(route_package_params)
          if @route_package.save
            @exercise = params[:exercise]
            @exercise.each do |c|
              @exercise = Exercise.find(c)
              @route_package.exercise << Exercise.find(c)
            end  
            render json: {
              message: 'success'
            }
          else
            render json:{
              message: 'failed',
              validation: @route_package.errors.messages
            }, status: 400
          end
        end

        def edit
          @route_package = Route_package.find(params[:id])
          render json: @route_package
        end
            
        def update
          @route_package = Route_package.find(params[:id])
          if @route_package.update(route_package_params)
            render json: "Update Successfully"
          else
            render json:{
              message: "Failed",
              validation: @route_package.errors.messages
            }, status: 400
          end
        end
            
        def destroy
          @route_package = Route_package.find(params[:id])
          if @route_package.destroy
            render json: {
              message: "destroy successfuly"
            }
          else
            render json: {
              message: "destroy failed"
            }, status: 400
          end
        end

        private
        def route_package_params
          params.permit(:weight_gain , :weight_loss, :muscle_gain , :height_gain)
        end
      end
		end
	end
end
