class Shelf < ActiveRecord::Base
  belongs_to :department
  belongs_to :product

  validates_associated :department, :product
  validates :product_id, uniqueness: {scope: :department_id}
end
