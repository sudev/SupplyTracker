class CreateRequiredItems < ActiveRecord::Migration[5.2]
  def change
    create_table :required_items do |t|

      t.timestamps
    end
  end
end
