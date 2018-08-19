class CreateShippedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :shipped_items do |t|

      t.timestamps
    end
  end
end
