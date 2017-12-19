class GridImagesController < ApplicationController


  def destroy
  end

  def update
  end

  def new
    @grid_image = GridImage.new 
  end 

  def create
    @grid_image = GridImage.new(grid_image_params)

    if @grid_image.save
      flash[:success] = "Category Saved."
      redirect_to edit_portfolio_grid_path
    else
      flash[:danger] = "Sorry, there was a problem! " + @grid_image.errors.full_messages.to_sentence 
      redirect_to edit_portfolio_grid_path
    end
  end


  private

    def grid_image_params
      params.require(:grid_image).permit(:name, :image, :grid_image_category_id)
    end
end
