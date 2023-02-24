class Book < ApplicationRecord
  # profile_imageかも？
  has_one_attached :image
  belongs_to :user
  
end
