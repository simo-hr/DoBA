class Match < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :match_day, presence: true
  validates :content, presence: true
  validates :vanue, presence: true


  def self.search(search)
    return Match.all unless search
    Match.where(['content LIKE ? OR title LIKE ? OR vanue LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
  end

  

end