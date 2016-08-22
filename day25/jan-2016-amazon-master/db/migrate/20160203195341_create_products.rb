class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      # precision is the number of digits to the left of the `.`
      # scale is the number of digits to right of the `.`
      t.decimal :price, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
