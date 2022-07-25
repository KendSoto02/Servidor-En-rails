class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :direction
      t.integer :statusClient
      t.integer :rolUser
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at


      t.timestamps
    end
    add_index :clients, :email,                unique: true
    add_index :clients, :reset_password_token, unique: true
  end
end
