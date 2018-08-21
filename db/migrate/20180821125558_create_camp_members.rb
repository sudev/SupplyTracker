class CreateCampMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :camp_members do |t|
      t.references :relief_camp, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
