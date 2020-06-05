class User < ApplicationRecord
  mount_uploader :team_img, ImageUploader
  has_many :matches, dependent: :destroy
  has_many :messages
  has_many :sent_messages, through: :messages, source: :receive_user
  has_many :reverses_of_message, class_name: 'Message', foreign_key: 'receive_user_id'
  has_many :received_messages, through: :reverses_of_message, source: :user
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :password ,presence: true
end
