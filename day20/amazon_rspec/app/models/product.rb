class Product < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :description, presence: true

    before_save :capitalize_title

    def self.search(keyword)
        where(['title ILIKE ? OR description ILIKE ?', "%#{keyword}%", "%#{keyword}%"])
    end

    def capitalize_title
        self.title.capitalize!
    end
end
