class AddDistrictToReliefCamps < ActiveRecord::Migration[5.2]
  def change
    add_reference :relief_camps, :district, foreign_key: true
  end
end
