class CreateShippedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :shipped_items do |t|
      t.references :requirement, foreign_key: true
      t.references :item_category, foreign_key: true
      t.references :item_type, foreign_key: true
      t.references :item_subtype, foreign_key: true
      t.references :item_unit, foreign_key: true
      t.float :quantity
      t.string :remark
      t.references :source, references: :areas, foreign_key: {to_table: :areas}
      t.references :destination, references: :areas, foreign_key: {to_table: :areas}
      t.references :relief_camp, foreign_key: true
      t.string :mode_of_transport
      t.references :current_location, references: :areas, foreign_key: {to_table: :areas}

      t.timestamps
    end
  end
end
