class CreateTemplateOnes < ActiveRecord::Migration[5.1]
  def change
    create_table :template_ones do |t|
      t.boolean :about_image_show_default, default: false 
      t.boolean :about_hide, default: false
      t.string :about_title
      t.string :about_text
      t.string :about_text_2
      t.string :about_image
      t.boolean :service_hide, default: false
      t.string :service_icon_1
      t.string :service_title_1
      t.string :service_text_1
      t.string :service_icon_2
      t.string :service_title_2
      t.string :service_text_2
      t.string :service_icon_3
      t.string :service_title_3
      t.string :service_text_3
      t.string :service_icon_4
      t.string :service_title_4
      t.string :service_text_4
      t.string :service_title_5
      t.string :service_text_5
      t.timestamps
    end
  end
end
