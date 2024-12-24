class CreateBlockPatterns < ActiveRecord::Migration[7.1]
  def change
    create_table :block_patterns do |t|
      t.string :name

      t.timestamps
    end
  end
end
