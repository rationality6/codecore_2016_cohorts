class Message < ApplicationRecord
  validates :content, presence: true

  has_many :comments, dependent: :destroy
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  def like_for(user)
  likes.find_by_user_id user.id
  end

  def liked_by?(user)
    likes.find_by_user_id user.id
  end
  # helper_method :like_for

end
