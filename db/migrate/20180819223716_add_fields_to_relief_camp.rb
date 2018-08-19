class AddFieldsToReliefCamp < ActiveRecord::Migration[5.2]
  def change
    add_column :relief_camps, :latitude, :decimal, {precision: 10, scale: 6}
    add_column :relief_camps, :longitude, :decimal, {precision: 10, scale: 6}
    add_column :relief_camps, :address, :text
    add_column :relief_camps, :phone_number, :string
    add_column :relief_camps, :whatsapp_number, :string
    add_column :relief_camps, :email, :string
    add_column :relief_camps, :contact_person, :string
  end
end
