class BlockPosition < ApplicationRecord
  belongs_to :block_pattern

  def to_json_with_category 
    { 
      x: x, 
      y: y, 
      category: 4 #block category is 4
    } 
  end
end
