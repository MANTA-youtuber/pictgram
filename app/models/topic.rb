class Topic < ApplicationRecord
  has_many :comments
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  belongs_to :user


 mount_uploader :image, ImageUploader

 has_many :favorites, foreign_key: 'topic_id'
 has_many :favorites, foreign_key: 'topic_id', dependent: :destroy
 has_many :favorite_users, through: :favorites, source: 'user'
end
