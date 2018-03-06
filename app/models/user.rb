class User < ApplicationRecord
  before_save {email.downcase! }
  validates :username, presence: true, uniqueness: true, length: {maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, length: {maximum: 255},
     format:     { with: VALID_EMAIL_REGEX }


  has_secure_password
  validates :password, presence: true, length: {minimum: 8}
end
