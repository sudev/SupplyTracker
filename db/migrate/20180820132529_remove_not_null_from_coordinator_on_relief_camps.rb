class RemoveNotNullFromCoordinatorOnReliefCamps < ActiveRecord::Migration[5.2]
  def change
    change_column_null :relief_camps, :coordinator_id, true
  end
end
