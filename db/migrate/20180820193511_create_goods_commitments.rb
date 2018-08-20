class CreateGoodsCommitments < ActiveRecord::Migration[5.2]
  def change
    create_table :goods_commitments do |t|
      t.references :user, foreign_key: true
      t.boolean :verified
      t.float :latitude
      t.float :longitude
      t.string :location
      t.boolean :active
      t.datetime :available_from

      t.timestamps
    end
  end
end
