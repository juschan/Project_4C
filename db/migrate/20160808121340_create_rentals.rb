class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.string :name
      t.text :address
      t.string :property_type
      t.string :tenure
      t.string :size
      t.string :psf
      t.integer :listingID
      t.string :price
      t.string :beds
      t.string :baths
      t.string :furnishing
      t.string :floor_level
      t.string :agent

      t.timestamps
    end
  end
end
