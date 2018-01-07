class AddFieldsToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :lecture_number, :integer
    add_column :posts, :section_number, :integer
    add_column :posts, :section_name, :string
  end
end
