class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :name
      t.string :code
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
