class Book < ApplicationRecord
   belongs_to :user

   
  validates :book, presence: true
  validates :catagory, presence: true
end
