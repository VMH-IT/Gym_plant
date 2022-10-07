class CreateJoinTableExerciseRoutePackage < ActiveRecord::Migration[7.0]
  def change
    create_join_table :exercise, :route_package do |t|
      t.index :exercise_id
      t.index :route_package_id

      t.timestamps
    end
  end
end
