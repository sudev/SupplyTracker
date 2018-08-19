class CreateItemSubTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_sub_types do |t|

      t.timestamps
    end
  end
end
