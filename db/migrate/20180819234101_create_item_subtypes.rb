class CreateItemSubtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_subtypes do |t|
      t.string :name
      t.string :code
      t.references :item_type, foreign_key: true

      t.timestamps
    end
  end
end
