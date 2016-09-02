class Message < ApplicationRecord
  validates :content, presence: true

  has_many :comments, dependent: :destroy
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

end
