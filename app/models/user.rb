class User < ApplicationRecord
  mount_uploader :team_img, ImageUploader
  has_many :matches, dependent: :destroy
  has_many :messages
  has_many :sent_messages, through: :messages, source: :receive_user
  has_many :reverses_of_message, class_name: 'Message', foreign_key: 'receive_user_id'
  has_many :received_messages, through: :reverses_of_message, source: :user
  validates :email ,presence: true
  validates :password ,presence: true


  
end
