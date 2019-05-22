class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true ,file_size: { less_than_or_equal_to: 10.megabytes },file_content_type: { allow: ['image/jpeg', 'image/png','image/jpg'] }



   belongs_to :user
   has_many :topics

   mount_uploader :image, ImageUploader
end
