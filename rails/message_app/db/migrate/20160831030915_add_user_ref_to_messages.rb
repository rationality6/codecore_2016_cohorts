class AddUserRefToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :user, foreign_key: true
    add_column :users, :admin, :boolean, default: false
  end
end
