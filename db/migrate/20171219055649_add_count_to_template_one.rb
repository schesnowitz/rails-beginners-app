class AddCountToTemplateOne < ActiveRecord::Migration[5.1]
  def change
    add_column :template_ones, :testimonial_count, :integer
  end
end
