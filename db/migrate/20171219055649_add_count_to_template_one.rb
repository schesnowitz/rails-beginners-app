class AddCountToTemplateOne < ActiveRecord::Migration[5.1]
  def change
    add_column :template_ones, :testimonial_count, :integer, default: 2
    add_column :template_ones, :portfolio_grid_title, :string
    add_column :template_ones, :portfolio_grid_text, :string
  end
end
