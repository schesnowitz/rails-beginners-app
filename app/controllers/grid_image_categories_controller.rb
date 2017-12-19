class GridImageCategoriesController < ApplicationController
  
    def new
      @template_one = TemplateOne.find(1)
      @grid_image_category = @template_one.grid_image_categories.new 
    end 
  
    def create
      @template_one = TemplateOne.find(1)
      @grid_image_category = @template_one.grid_image_categories.build(grid_image_params)
  
      if @grid_image_category.save
        flash[:success] = "Category Saved."
        redirect_to edit_portfolio_grid_path
      else
        flash[:danger] = "Sorry, there was a problem! " + @grid_image_category.errors.full_messages.to_sentence 
        redirect_to edit_portfolio_grid_path
      end
    end
  
  
    private
  
      def grid_image_params
        params.require(:grid_image_category).permit(:name)
      end
  end