class CreateSetTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :set_times do |t|
      t.integer :dancer_id
      t.integer :stage_id
      t.datetime :time

      t.timestamps
    end
  end
end
