class CreateRequiredItems < ActiveRecord::Migration[5.2]
  def change
    create_table :required_items do |t|
      t.references :requirement, foreign_key: true
      t.references :item_category, foreign_key: true
      t.references :item_type, foreign_key: true
      t.references :item_subtype, foreign_key: true
      t.references :item_unit, foreign_key: true
      t.references :item_condition, foreign_key: true
      t.float :quantity_requested
      t.float :quantity_provided
      t.float :quantity_needed
      t.string :status
      t.string :remark

      t.timestamps
    end
  end
end
