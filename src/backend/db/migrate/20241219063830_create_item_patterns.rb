class CreateItemPatterns < ActiveRecord::Migration[7.1]
  def change
    create_table :item_patterns do |t|
      t.references :block_pattern, null: false, foreign_key: true
      t.integer :pattern_id

      t.timestamps
    end
  end
end
