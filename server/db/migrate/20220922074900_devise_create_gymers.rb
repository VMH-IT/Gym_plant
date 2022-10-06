# frozen_string_literal: true

class DeviseCreateGymers < ActiveRecord::Migration[7.0]
  def change
    create_table :gymers do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      
      t.string :name_gymer          
      t.string :phoneNumber       
      t.text   :address       
      t.integer :age      
      t.integer :gender    
      t.string :weight 
      t.string :height
      t.text :tracked_exersice
      t.string :tracked_route
      t.string :packages_use
      t.string :pt_use
      t.datetime :start_at

      t.timestamps null: false
    end

    add_index :gymers, :email,                unique: true
    add_index :gymers, :reset_password_token, unique: true
    # add_index :gymers, :confirmation_token,   unique: true
    # add_index :gymers, :unlock_token,         unique: true
  end
end
