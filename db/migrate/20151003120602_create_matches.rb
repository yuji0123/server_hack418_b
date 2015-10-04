class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :user_id_2
      t.float :position_x
      t.float :position_y

      t.timestamps null: false
    end
  end
end
