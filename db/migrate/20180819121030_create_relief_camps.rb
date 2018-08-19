class CreateReliefCamps < ActiveRecord::Migration[5.2]
  def change
    create_table :relief_camps do |t|
      t.string :name, null: false
      t.references :coordinator, references: :users, index: true, null: false

      t.timestamps
    end
  end
end
