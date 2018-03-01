class CreateDancers < ActiveRecord::Migration[5.1]
  def change
    create_table :dancers do |t|
      t.string :stage_name
      t.string :full_name
      t.float :account

      t.timestamps
    end
  end
end
