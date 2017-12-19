class GridImageCategory < ApplicationRecord
  belongs_to :template_one
  has_many :grid_images, dependent: :destroy 
end
