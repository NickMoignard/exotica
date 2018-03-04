class CreateDancers < ActiveRecord::Migration[5.1]
  def change
    create_table :dancers do |t|
      t.string :full_name
      t.string :fake_name
      t.float :account

      t.timestamps
    end
  end
end
