class CreateDateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :date_trainings do |t|
      t.string :title
      t.string :status
      t.datetime :time_training
      
      t.timestamps
    end
  end
end
