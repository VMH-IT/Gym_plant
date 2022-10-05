# frozen_string_literal: true

class DeviseCreatePtgyms < ActiveRecord::Migration[7.0]
  def change
    create_table :ptgyms do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.string :pt_name,            null: false, default: ""                
      t.string :phoneNumber              
      t.text   :address              
      t.integer :age             
      t.integer :gender           
      t.string :weight        
      t.string :height       
      t.string :academic_level      
      t.string :tracked_route
    end

    add_index :ptgyms, :email,                unique: true

    # add_index :ptgyms, :confirmation_token,   unique: true
    # add_index :ptgyms, :unlock_token,         unique: true
  end
end
