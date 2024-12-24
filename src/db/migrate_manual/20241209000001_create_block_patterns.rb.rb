# db/migrate/20241209000001_create_block_patterns.rb
class CreateBlockPatterns < ActiveRecord::Migration[6.0]
    def change
      create_table :block_patterns do |t|
        t.string :name, null: false
  
        t.timestamps
      end
    end
  end
  