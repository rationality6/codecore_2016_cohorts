class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :star_count
      t.string :body

      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
