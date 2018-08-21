class AddGoodsCommitmentToInventory < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventories, :goods_commitment, foreign_key: true
  end
end
