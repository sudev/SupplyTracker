class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :role, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :location, :string
    add_column :users, :address, :text
    add_column :users, :phone_no, :string
    add_column :users, :whatsapp_no, :string
    add_column :users, :email, :string
    add_column :users, :relief_camp, foreign_key: true
  end
end
