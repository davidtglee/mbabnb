class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :city
      t.string :neighborhood
      t.integer :price
      t.float :bedrooms
      t.float :bathrooms
      t.date :start_date
      t.date :end_date
      t.text :description
      t.boolean :shared

      t.timestamps

    end
  end
end
