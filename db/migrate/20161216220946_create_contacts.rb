class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name,  null: false
      t.string :email,      null: false
      t.string :message,    null: false

      t.timestamps null: false
    end
    add_index :contacts, :last_name
    add_index :contacts, :email, unique: true
  end
end
