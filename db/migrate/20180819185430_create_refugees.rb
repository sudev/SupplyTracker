class CreateRefugees < ActiveRecord::Migration[5.2]
  def change
    create_table :refugees do |t|

      t.timestamps
    end
  end
end
