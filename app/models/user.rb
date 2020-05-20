class User < ApplicationRecord
  mount_uploader :team_img, ImageUploader
  has_many :matches, dependent: :destroy
  validates :email ,presence: true
  validates :password ,presence: true


  
end
