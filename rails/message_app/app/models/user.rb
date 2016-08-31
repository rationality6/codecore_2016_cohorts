class User < ApplicationRecord
  has_secure_password

  has_many :messages, dependent: :nullify

  validates :email, presence: true, uniqueness: true, format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
