class CreateJoinTablePtgymDateTraining < ActiveRecord::Migration[7.0]
  def change
    create_join_table :ptgym, :date_training do |t|
      t.index :ptgym_id
      t.index :date_training_id

      t.timestamps
    end
  end
end
