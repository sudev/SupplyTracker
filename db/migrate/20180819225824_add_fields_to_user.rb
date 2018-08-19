class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    add_column :users, :latitude, :decimal,  {precision: 10, scale: 6}
    add_column :users, :longitude, :decimal,  {precision: 10, scale: 6}
    add_column :users, :location, :string
    add_column :users, :address, :text
    add_column :users, :phone_number, :string
    add_column :users, :whatsapp_number, :string
    add_reference :users, :relief_camp, index: true
  end
end
