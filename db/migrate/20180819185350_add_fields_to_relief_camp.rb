class AddFieldsToReliefCamp < ActiveRecord::Migration[5.2]
  def change
    add_column :relief_camps, :latitude, :float
    add_column :relief_camps, :longitude, :float
    add_column :relief_camps, :address, :text
    add_column :relief_camps, :phone_no, :string
    add_column :relief_camps, :whatsapp_no, :string
    add_column :relief_camps, :email, :string
    add_column :relief_camps, :contact_person, :string
    add_column :relief_camps, :coordinator_id, :sting
  end
end
