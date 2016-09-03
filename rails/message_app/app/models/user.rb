class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :last_name, presence: true

  has_many :messages, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_messages, through: :likes, source: :message

  def full_name
    "#{first_name} #{last_name}".squeeze(' ').strip.titleize
  end

  private
end
