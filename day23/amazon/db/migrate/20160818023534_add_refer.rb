class AddRefer < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :category, index: true
  end
end
