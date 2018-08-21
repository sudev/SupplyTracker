class AddLocationToReliefCamp < ActiveRecord::Migration[5.2]
  def change
    add_column :relief_camps, :location, :string
  end
end
