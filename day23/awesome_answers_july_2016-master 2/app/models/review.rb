class Review < ApplicationRecord
  belongs_to :question
  # validates :star_count, inclusion: { in: [1, 5] }
end
