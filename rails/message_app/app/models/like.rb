class Like < ApplicationRecord
  belongs_to :user
  belongs_to :message

  validates :message_id, uniqueness: { scope: :user_id }

end
