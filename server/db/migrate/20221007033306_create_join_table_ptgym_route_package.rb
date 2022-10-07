class CreateJoinTablePtgymRoutePackage < ActiveRecord::Migration[7.0]
  def change
    create_join_table :ptgyms, :route_package do |t|
      t.index :ptgym_id
      t.index :route_package_id

      t.timestamps
    end
  end
end
