# db/migrate/20241209000004_create_item_positions.rb
class CreateItemPositions < ActiveRecord::Migration[6.0]
    def change
      create_table :item_positions do |t|
        t.bigint :item_pattern_id, null: false
        t.integer :x, null: false
        t.integer :y, null: false
        t.integer :category, null: false
  
        t.foreign_key :item_patterns, column: :item_pattern_id, on_delete: :cascade
  
        t.timestamps
      end
    end
  end
  