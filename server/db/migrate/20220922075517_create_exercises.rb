class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :introduce
      t.string :category_route
      t.string :name_exersice
      t.string :perform 
      t.string :time_exersice
      t.string :num_sets
      t.string :num_reps



      t.timestamps
    end
  end
end
