class AddAreaToReliefCamps < ActiveRecord::Migration[5.2]
  def change
    add_reference :relief_camps, :area, foreign_key: true
  end
end
