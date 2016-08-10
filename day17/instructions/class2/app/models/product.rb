class Product < ApplicationRecord
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000 }
    validates :description, presence: true, length: { minimum: 10 }

    def self.search(s)
        where(['title ILIKE ? OR description ILIKE ?', "%#{s}%","%#{s}%"])
    end

    after_initialize :default_price

    before_validation :capitalize

    private

    def default_price
        self.price ||= 1
    end

    def capitalize
        self.title.capitalize! if title
    end

end
