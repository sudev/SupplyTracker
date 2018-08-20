class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.string :local_name, null: false

      t.timestamps
    end

    add_index :districts, :name
    add_index :districts, :code, unique: true
  end
end
