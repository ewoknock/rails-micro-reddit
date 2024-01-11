class User < ApplicationRecord
  has_many :posts
  validates :username, presence: true, length: { in: 4..20 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 8..12 }
end
