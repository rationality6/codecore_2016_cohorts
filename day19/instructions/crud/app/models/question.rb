class Question < ApplicationRecord
  validates(:title, presence: true)

  before_validation :capitalize_title

  private

  def capitalize_title
    title.capitalize! if title
  end

end
