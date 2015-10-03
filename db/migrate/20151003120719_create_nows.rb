class CreateNows < ActiveRecord::Migration
  def change
    create_table :nows do |t|
      t.integer :user_id
      t.text :now_positon
      t.integer :point

      t.timestamps null: false
    end
  end
end
