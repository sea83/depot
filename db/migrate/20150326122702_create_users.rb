class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.text :address
      t.integer :role

      t.timestamps null: false
    end
  end
end
