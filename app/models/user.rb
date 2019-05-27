class User < ApplicationRecord
  validates :name, presence:true, length:{maximum: 15}

  Valid_Email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: {with:  Valid_Email}

validates :password, presence: true, length:{ in:8..32 }

has_secure_password

  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'

end
