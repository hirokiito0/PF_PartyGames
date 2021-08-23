class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string  :name,         null: false
      t.string  :email,        null: false
      t.string  :message,      null: false
      t.integer :subject, default: 0, null: false

      t.timestamps
    end
  end
end
