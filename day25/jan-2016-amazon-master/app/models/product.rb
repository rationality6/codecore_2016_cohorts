class Product < ActiveRecord::Base
  validates :name, presence: true,
                   length: {minimum: 3},
                   uniqueness: {case_sensitive: false,
                                message:        "already exists!"}
  validates :price, numericality: {greater_than_or_equal_to: 0}

  has_many :reviews, dependent: :destroy

  has_many :shelves, dependent: :destroy
  has_many :departments, through: :shelves
end
