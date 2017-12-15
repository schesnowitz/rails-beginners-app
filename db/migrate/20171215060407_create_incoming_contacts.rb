class CreateIncomingContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :incoming_contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
