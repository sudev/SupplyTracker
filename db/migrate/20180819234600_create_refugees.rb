class CreateRefugees < ActiveRecord::Migration[5.2]
  def change
    create_table :refugees do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :location
      t.text :address
      t.string :phone_number
      t.string :whatsapp_number
      t.string :email
      t.references :relief_camp, foreign_key: true
      t.string :contact1
      t.string :contact2
      t.string :contact3

      t.timestamps
    end
  end
end
