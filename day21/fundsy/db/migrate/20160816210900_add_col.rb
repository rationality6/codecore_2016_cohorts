class AddCol < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :title, :string
    add_column :animals, :description, :string
    add_column :animals, :goal, :integer
  end
end
