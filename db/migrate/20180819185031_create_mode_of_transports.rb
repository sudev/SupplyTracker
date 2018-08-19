class CreateModeOfTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :mode_of_transports do |t|

      t.timestamps
    end
  end
end
