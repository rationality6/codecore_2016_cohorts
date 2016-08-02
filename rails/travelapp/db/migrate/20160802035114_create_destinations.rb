class CreateDestinations < ActiveRecord::Migration[5.0]
    def change
        create_table :destinations do |t|
            t.string :name
            t.string :iamge
            t.string :description
            t.references :tag
            t.timestamps
        end
    end
end
