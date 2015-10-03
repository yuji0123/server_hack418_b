class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :user_id_2
      t.text :position

      t.timestamps null: false
    end
  end
end
