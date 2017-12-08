class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :button_text
      t.string :image_1
      t.string :image_2
      t.integer :template_one_id

      t.timestamps
    end
  end
end
