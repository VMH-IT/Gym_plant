class CreateRoutePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :route_packages do |t|
      t.string :weight_gain
      t.string :weight_loss
      t.string :muscle_gain
      t.string :height_gain
      t.timestamps
    end
  end
end
