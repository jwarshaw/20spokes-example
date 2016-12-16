class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :message

      t.timestamps null: false
    end
    add_index :contacts, :last_name
    add_index :contacts, :email, unique: true
  end
end
