# db/migrate/20241209000002_create_block_positions.rb
class CreateBlockPositions < ActiveRecord::Migration[6.0]
    def change
      create_table :block_positions do |t|
        t.bigint :block_pattern_id, null: false
        t.integer :x, null: false
        t.integer :y, null: false
  
        t.foreign_key :block_patterns, column: :block_pattern_id, on_delete: :cascade
  
        t.timestamps
      end
    end
  end
  