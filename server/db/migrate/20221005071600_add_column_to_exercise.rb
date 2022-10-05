class AddColumnToExercise < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises , :image_exercises , :string
    add_column :exercises , :video_exercises, :string
  end
end
