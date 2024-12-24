class CreateBlockPositions < ActiveRecord::Migration[7.1]
  def change
    create_table :block_positions do |t|
      t.references :block_pattern, null: false, foreign_key: true
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
