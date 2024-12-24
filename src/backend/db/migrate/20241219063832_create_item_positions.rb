class CreateItemPositions < ActiveRecord::Migration[7.1]
  def change
    create_table :item_positions do |t|
      t.references :item_pattern, null: false, foreign_key: true
      t.integer :x
      t.integer :y
      t.integer :category

      t.timestamps
    end
  end
end
