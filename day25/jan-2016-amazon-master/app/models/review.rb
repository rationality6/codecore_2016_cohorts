class Review < ActiveRecord::Base
  belongs_to :product

  validates :body, presence: true, uniqueness: {scope: :product_id}
end
