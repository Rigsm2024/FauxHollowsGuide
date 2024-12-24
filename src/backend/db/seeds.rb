# db/seeds.rb
require_relative '../app/models/block_pattern'
require_relative '../app/models/block_position'
require_relative '../app/models/item_pattern'
require_relative '../app/models/item_position'

# ブロックパターン
block_patterns = [
  { name: 'A' },    # id: 1
  { name: 'B' },    # id: 2
  { name: 'C' },    # id: 3
  { name: 'D' }     # id: 4
]

block_patterns.each do |pattern|
  BlockPattern.create!(pattern)
end

# ブロック配置
block_positions = [
  # パターンAの配置
  { block_pattern_id: 1, x: 6, y: 1 },
  { block_pattern_id: 1, x: 3, y: 2 },
  { block_pattern_id: 1, x: 2, y: 4 },
  { block_pattern_id: 1, x: 3, y: 5 },
  { block_pattern_id: 1, x: 5, y: 5 },

  # パターンBの配置
  { block_pattern_id: 2, x: 3, y: 1 },
  { block_pattern_id: 2, x: 4, y: 3 },
  { block_pattern_id: 2, x: 2, y: 4 },
  { block_pattern_id: 2, x: 5, y: 4 },
  { block_pattern_id: 2, x: 4, y: 6 },

  # パターンCの配置
  { block_pattern_id: 3, x: 4, y: 1 },
  { block_pattern_id: 3, x: 2, y: 2 },
  { block_pattern_id: 3, x: 4, y: 4 },
  { block_pattern_id: 3, x: 2, y: 5 },
  { block_pattern_id: 3, x: 5, y: 6 },

  # パターンDの配置
  { block_pattern_id: 4, x: 3, y: 1 },
  { block_pattern_id: 4, x: 4, y: 2 },
  { block_pattern_id: 4, x: 1, y: 3 },
  { block_pattern_id: 4, x: 5, y: 4 },
  { block_pattern_id: 4, x: 2, y: 5 }
]

block_positions.each do |position|
  BlockPosition.create!(position)
end

# アイテムパターン
item_patterns = [
  # パターンA 16のサブパターン
  { block_pattern_id: 1, pattern_id: 1 },
  { block_pattern_id: 1, pattern_id: 2 },
  { block_pattern_id: 1, pattern_id: 3 },
  { block_pattern_id: 1, pattern_id: 4 },
  { block_pattern_id: 1, pattern_id: 5 },
  { block_pattern_id: 1, pattern_id: 6 },
  { block_pattern_id: 1, pattern_id: 7 },
  { block_pattern_id: 1, pattern_id: 8 },
  { block_pattern_id: 1, pattern_id: 9 },
  { block_pattern_id: 1, pattern_id: 10 },
  { block_pattern_id: 1, pattern_id: 11 },
  { block_pattern_id: 1, pattern_id: 12 },
  { block_pattern_id: 1, pattern_id: 13 },
  { block_pattern_id: 1, pattern_id: 14 },
  { block_pattern_id: 1, pattern_id: 15 },
  { block_pattern_id: 1, pattern_id: 16 },

  # パターンB 16のサブパターン
  { block_pattern_id: 2, pattern_id: 1 },
  { block_pattern_id: 2, pattern_id: 2 },
  { block_pattern_id: 2, pattern_id: 3 },
  { block_pattern_id: 2, pattern_id: 4 },
  { block_pattern_id: 2, pattern_id: 5 },
  { block_pattern_id: 2, pattern_id: 6 },
  { block_pattern_id: 2, pattern_id: 7 },
  { block_pattern_id: 2, pattern_id: 8 },
  { block_pattern_id: 2, pattern_id: 9 },
  { block_pattern_id: 2, pattern_id: 10 },
  { block_pattern_id: 2, pattern_id: 11 },
  { block_pattern_id: 2, pattern_id: 12 },
  { block_pattern_id: 2, pattern_id: 13 },
  { block_pattern_id: 2, pattern_id: 14 },
  { block_pattern_id: 2, pattern_id: 15 },
  { block_pattern_id: 2, pattern_id: 16 },

  # パターンC 15のサブパターン
  { block_pattern_id: 3, pattern_id: 1 },
  { block_pattern_id: 3, pattern_id: 2 },
  { block_pattern_id: 3, pattern_id: 3 },
  { block_pattern_id: 3, pattern_id: 4 },
  { block_pattern_id: 3, pattern_id: 5 },
  { block_pattern_id: 3, pattern_id: 6 },
  { block_pattern_id: 3, pattern_id: 7 },
  { block_pattern_id: 3, pattern_id: 8 },
  { block_pattern_id: 3, pattern_id: 9 },
  { block_pattern_id: 3, pattern_id: 10 },
  { block_pattern_id: 3, pattern_id: 11 },
  { block_pattern_id: 3, pattern_id: 12 },
  { block_pattern_id: 3, pattern_id: 13 },
  { block_pattern_id: 3, pattern_id: 14 },
  { block_pattern_id: 3, pattern_id: 15 },

  # パターンD 16のサブパターン
  { block_pattern_id: 4, pattern_id: 1 },
  { block_pattern_id: 4, pattern_id: 2 },
  { block_pattern_id: 4, pattern_id: 3 },
  { block_pattern_id: 4, pattern_id: 4 },
  { block_pattern_id: 4, pattern_id: 5 },
  { block_pattern_id: 4, pattern_id: 6 },
  { block_pattern_id: 4, pattern_id: 7 },
  { block_pattern_id: 4, pattern_id: 8 },
  { block_pattern_id: 4, pattern_id: 9 },
  { block_pattern_id: 4, pattern_id: 10 },
  { block_pattern_id: 4, pattern_id: 11 },
  { block_pattern_id: 4, pattern_id: 12 },
  { block_pattern_id: 4, pattern_id: 13 },
  { block_pattern_id: 4, pattern_id: 14 },
  { block_pattern_id: 4, pattern_id: 15 },
  { block_pattern_id: 4, pattern_id: 16 },
]

item_patterns.each do |pattern|
  ItemPattern.create!(pattern)
end

# アイテム配置
item_positions = [
  # A-1
  { item_pattern_id: 1, x: 5, y: 2, category: 1 },
  { item_pattern_id: 1, x: 6, y: 2, category: 1 },
  { item_pattern_id: 1, x: 5, y: 3, category: 1 },
  { item_pattern_id: 1, x: 6, y: 3, category: 1 },
  { item_pattern_id: 1, x: 5, y: 4, category: 1 },
  { item_pattern_id: 1, x: 6, y: 4, category: 1 },
  { item_pattern_id: 1, x: 1, y: 5, category: 2 },
  { item_pattern_id: 1, x: 2, y: 5, category: 2 },
  { item_pattern_id: 1, x: 1, y: 6, category: 2 },
  { item_pattern_id: 1, x: 2, y: 6, category: 2 },
  { item_pattern_id: 1, x: 1, y: 1, category: 3 },
  { item_pattern_id: 1, x: 1, y: 4, category: 3 },
  { item_pattern_id: 1, x: 4, y: 6, category: 3 },
  { item_pattern_id: 1, x: 5, y: 6, category: 3 }
]

item_positions.each do |position|
  ItemPosition.create!(position)
end
