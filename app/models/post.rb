class Post < ApplicationRecord


  validates :title, length: { minimum: 4, maximum: 150 } 
  # validates :body, length: { minimum: 1 }
  belongs_to :user
  belongs_to :course
  has_many :comments, dependent: :destroy 
  validates_inclusion_of :lecture_number, in: 1..5000, message: "Value must a number > 0"
  validates_inclusion_of :section_number, in: 1..5000, message: "Value must a number > 0"

  
VIDEOS = [
"Section 1 - The Set Up", 
"Section 2 - Some Of The Basics",
'Section 3 - Variables',
'Section 4 - Welcome to Git',
'Section 5 - It\'s a String Thing',
'Section 6 - Ruby Loves Arithmetic',
'Section 7 - Ruby Methods',
'Section 8 - Ruby Operators',
'Section 9 - Getting Input and Interaction',
'Section 10 - Arrays',
'Section 11 - The Hash',
'Section 12 - Mission Impossible',
'Section 13 - Conditions and Loops',
'Section 14 - Ruby Has Class',
'Section 15 - Working With Files',
'Section 16 - Errors',
'Section 17 - Search WIth Grep',
'Section 18 - Gems',
'Section 19 - Build A Gem',
'Section 20 - Ruby Gaming',
'Section 21 - Galigoo'
]
end 
