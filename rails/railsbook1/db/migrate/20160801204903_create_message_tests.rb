class CreateMessageTests < ActiveRecord::Migration[5.0]
  def change
    create_table :message_tests do |t|

      t.timestamps
    end
  end
end
