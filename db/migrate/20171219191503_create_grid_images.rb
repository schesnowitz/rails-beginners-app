class CreateGridImages < ActiveRecord::Migration[5.1]
  def change
    create_table :grid_images do |t|
      t.string :image
      t.integer :grid_image_category_id
      t.string :name

      t.timestamps
    end
  end
end
