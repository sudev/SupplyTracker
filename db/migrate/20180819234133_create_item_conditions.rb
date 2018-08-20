class CreateItemConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :item_conditions do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
