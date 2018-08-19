class CreateItemSubtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_subtypes do |t|

      t.timestamps
    end
  end
end
