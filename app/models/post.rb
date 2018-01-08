class Post < ApplicationRecord


  validates :title, length: { minimum: 4, maximum: 150 } 
  # validates :body, length: { minimum: 1 }
  belongs_to :user
  belongs_to :course
  has_many :comments, dependent: :destroy 
  validates_inclusion_of :lecture_number, in: 1..5000, message: "Value must a number > 0"
  validates_inclusion_of :section_number, in: 1..5000, message: "Value must a number > 0"
end 
