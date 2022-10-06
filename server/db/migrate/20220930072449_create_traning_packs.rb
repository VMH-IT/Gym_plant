class CreateTraningPacks < ActiveRecord::Migration[7.0]
  def change
    create_table :traning_packs do |t|
      t.string :pack_type
      t.string :pack_price
      t.string :time_use
       
      t.timestamps
    end
  end
end
