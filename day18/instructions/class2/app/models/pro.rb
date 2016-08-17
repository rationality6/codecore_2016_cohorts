class Pro < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000 }
end
