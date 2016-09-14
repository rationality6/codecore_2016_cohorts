class Animal < ApplicationRecord
  validates :title, presence: true, uniqueness: true
end
