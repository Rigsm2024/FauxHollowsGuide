# db/migrate/20241209000003_create_item_patterns.rb
class CreateItemPatterns < ActiveRecord::Migration[6.0]
    def change
      create_table :item_patterns do |t|
        t.bigint :block_pattern_id, null: false
        t.integer :pattern_id, null: false
  
        t.foreign_key :block_patterns, column: :block_pattern_id, on_delete: :cascade
  
        t.timestamps
      end
    end
  end
  