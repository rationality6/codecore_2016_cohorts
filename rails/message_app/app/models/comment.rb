class Comment < ApplicationRecord
  belongs_to :message
  belongs_to :user
  # validates :body, presence: true, uniqueness: {scope: :question_id}
end
