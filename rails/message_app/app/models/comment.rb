class Comment < ApplicationRecord
  belongs_to :message

  # validates :body, presence: true, uniqueness: {scope: :question_id}
end
