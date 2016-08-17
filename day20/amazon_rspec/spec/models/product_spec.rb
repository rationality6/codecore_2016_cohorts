require 'rails_helper'

RSpec.describe Product, type: :model do
    describe 'Validations' do
        it 'requires a title' do
            product = Product.new
            product.valid?
            expect(product.errors).to have_key(:title)
        end
        it 'requires a price' do
            product = Product.new
            product.valid?
            expect(product.errors).to have_key(:price)
        end
        it 'requires a description' do
            product = Product.new
            product.valid?
            expect(product.errors).to have_key(:description)
        end
        it 'requires a title uniqueness' do
            product = Product.create(title: 'google', price: 8, description: 'bar')
            product1 = Product.create(title: 'google', price: 90, description: 'bar')
            product1.valid?
            expect(product1.errors).to have_key(:title)
        end
        it 'price must more than 0' do
            product = Product.create(title: 'google', price: -60, description: 'baz')
            product.valid?
            expect(product.errors).to(have_key(:price))
        end
        it 'titleized_title' do
            product = Product.create(title: 'hello world', price: 6, description: 'baz')
            expect(product.title).to eq('Hello world')
        end
    end
end
