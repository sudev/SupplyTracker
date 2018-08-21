class AddItemCategoryToItemType < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_types, :item_category, foreign_key: true
  end
end
