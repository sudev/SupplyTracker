class ChangeFieldInArea < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :tags, :string, array: true
    add_column :areas, :locality, :string
    add_reference :areas, :district, foreign_key: true
    remove_column :areas, :area_id, :bigint
  end
end
