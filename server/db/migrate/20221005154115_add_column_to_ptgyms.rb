class AddColumnToPtgyms < ActiveRecord::Migration[7.0]
  def change
    add_column :ptgyms , :is_ptgyms , :boolean , :default => false
    add_column :ptgyms , :manages , :string
  end
end
