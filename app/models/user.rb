class User < ApplicationRecord
  # has_many :comments
  has_many :articles, dependent: :destroy
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximim: 25 }
  validates :email, presence: true, length: {maximum: 105}, uniqueness: { case_sensitive: false }, format:{ with: VALID_EMAIL_REGEX }
  has_secure_password
end
