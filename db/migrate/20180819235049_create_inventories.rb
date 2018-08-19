class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.references :item_category, foreign_key: true
      t.references :item_type, foreign_key: true
      t.references :item_subtype, foreign_key: true
      t.references :item_unit, foreign_key: true
      t.float :quantity
      t.references :area, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.text :address
      t.float :initial_quantity
      t.float :available_quantity
      t.string :source
      t.integer :volunteer_id
      t.string :contact_number
      t.string :contact_name
      t.datetime :available_from

      t.timestamps
    end
  end
end
