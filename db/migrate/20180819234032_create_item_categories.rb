class CreateItemCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :item_categories do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end