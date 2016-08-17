class Book < ApplicationRecord
  validates :title, presence: true
  validate :price , {}
  before_validation :capitalize_title

  private

  def capitalize_title
    title.capitalize! if title
  end
end
