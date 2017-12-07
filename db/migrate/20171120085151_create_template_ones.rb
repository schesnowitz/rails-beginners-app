class CreateTemplateOnes < ActiveRecord::Migration[5.1]
  def change
    create_table :template_ones do |t|
      t.boolean :about_image_show_default, default: false 
      t.boolean :about_hide, default: false
      t.string :about_title
      t.string :about_text
      t.string :about_text_2
      t.string :about_image

      t.timestamps
    end
  end
end
