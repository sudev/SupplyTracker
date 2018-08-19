class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|

      t.timestamps
    end
  end
end
