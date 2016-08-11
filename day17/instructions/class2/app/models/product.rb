class Product < ApplicationRecord
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000 }
    validates :description, presence: true, length: { minimum: 10 }

    def self.search(s)
        where(['title ILIKE ? OR description ILIKE ?', "%#{s}%", "%#{s}%"])
    end

    def self.search1(keyword)
        (where(['title ILIKE ?', "%#{keyword}%"]).order(title: :desc) + where(['description ILIKE ?', "%#{keyword}%"]).order(description: :asc)).uniq
    end

    after_initialize :default_price

    before_validation :capitalize

    private

    def default_price
        self.price ||= 1
    end

    def capitalize
        title.capitalize! if title
    end
end
