class Department < ActiveRecord::Base
  has_many :shelves, dependent: :destroy
  has_many :products, through: :shelves

  validates :name, presence: true, uniqueness: true
end
