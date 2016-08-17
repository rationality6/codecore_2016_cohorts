class Price < ActiveRecord::Migration[5.0]
  def change
      add_column :products, :price, :float
  end
end
