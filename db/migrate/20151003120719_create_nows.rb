class CreateNows < ActiveRecord::Migration
  def change
    create_table :nows do |t|
      t.integer :user_id
      t.float :now_position_x
      t.float :now_position_y
      t.integer :point

      t.timestamps null: false
    end
  end
end
