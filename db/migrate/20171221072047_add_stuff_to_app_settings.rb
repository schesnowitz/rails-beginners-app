class AddStuffToAppSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :app_settings, :front_end_color, :string
    add_column :app_settings, :app_title, :string
    add_column :app_settings, :app_email_1, :string
    add_column :app_settings, :app_email_2, :string
    add_column :app_settings, :app_email_title_1, :string
    add_column :app_settings, :app_email_title_2, :string
  end
end
