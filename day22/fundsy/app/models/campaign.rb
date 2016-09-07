class Campaign < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  def titleized_title
    title.titleize
  end
end
