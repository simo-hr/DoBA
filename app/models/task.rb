class Task < ApplicationRecord
    belongs_to :user
    validates :content, presence: true
    validates :title, presence: true
    validates :start_time, presence: true
end
