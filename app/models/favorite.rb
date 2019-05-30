class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :topic
  validates :topic_id, presence: true
end
