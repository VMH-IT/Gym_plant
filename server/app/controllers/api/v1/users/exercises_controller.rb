module Api
  module V1
    module Users
      class ExercisesController < ApplicationController
        def create
          @exercise = Exercise.new(exercise_params)
          @exercise.image.attach(params[:exercise][:image])
          if @exercise.save
            render json: {
              message: 'success'
            }
          else
            render json:{
              message: 'failed',
              validation: @exercise.errors.messages
            }, status: 400
          end
        end

        def index
          @q = Exercise.ransack(params[:q])
          @exercise = @q.result(distinct: true)
          render json: @exercise
        end

        def edit
          @exercise = Exercise.find(params[:id])
          render json: @exercise
        end
            
        def update
          @exercise = Exercise.find(params[:id])
          if @exercise.update(exercise_params)
            render json: "Update Successfully"
          else
            render json:{
              message: "Failed",
              validation: @exercise.errors.messages
            }, status: 400
          end
        end
            
        def destroy
          @exercise = Exercise.find(params[:id])
          if @exercise.destroy
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
        def exercise_params
          params.permit(:introduce, :category_route, :name_exersice, :perform, :time_exersice, :num_reps , :num_sets)
        end
      end
    end
  end
end
