class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
      t.references :relief_camp, foreign_key: true
      t.references :area, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :requested_at
      t.string :requester
      t.string :request_mode
      t.string :priority

      t.timestamps
    end
  end
end
