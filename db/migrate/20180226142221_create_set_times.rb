class CreateSetTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :set_times do |t|
      t.datetime :time
      t.integer :dancer_id
      t.integer :stage_id

      t.timestamps
    end
  end
end
