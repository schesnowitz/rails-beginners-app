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
      t.boolean :process_hide 
      t.string :main_process_title
      t.string :main_process_title_text
      t.string :process_icon_1
      t.string :sub_title_1
      t.string :process_li_1
      t.string :process_li_2
      t.string :process_li_3
      t.string :process_li_4
      t.string :process_icon_2
      t.string :sub_title_2
      t.string :process_li_5
      t.string :process_li_6
      t.string :process_li_7
      t.string :process_li_8
      t.string :process_icon_3
      t.string :sub_title_3
      t.string :process_li_9
      t.string :process_li_10
      t.string :process_li_11
      t.string :process_li_12
      t.boolean :header_hide
      t.string :header_title 
      t.string :header_text
      t.string :header_image
      t.string :header_svg
      t.boolean :header_use_default_svg
      t.boolean :header_use_default_image
      t.boolean :contact_hide
      t.boolean :action_hide
      t.string :action_text_1
      t.string :action_text_2
      t.string :action_text_3
      t.string :action_text_4
      t.string :action_text_5
      t.string :action_text_6   
      t.string :action_text_7
      t.string :action_button_text
      t.boolean :action_use_default_image
      t.string :action_image 
      t.boolean :testimonial_hide
      t.boolean :portfolio_carousel_hide
      t.boolean :portfolio_carousel_heading_hide
      t.boolean :portfolio_grid_hide
      t.boolean :footer_hide
      t.boolean :navigation_hide
      t.string :navigation_title
      t.boolean :newsletter_hide

      t.timestamps
    end
  end
end
