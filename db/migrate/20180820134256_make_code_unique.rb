class MakeCodeUnique < ActiveRecord::Migration[5.2]
  def change
    add_column :relief_camps, :code, :string
    add_index :relief_camps, :code, unique: true
    add_index :areas, :code, unique: true
    add_index :item_categories, :code, unique: true
    add_index :item_conditions, :code, unique: true
    add_index :item_subtypes, :code, unique: true
    add_index :item_types, :code, unique: true
    add_index :item_units, :code, unique: true
    add_index :mode_of_transports, :code, unique: true
  end
end
