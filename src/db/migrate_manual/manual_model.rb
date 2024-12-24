# app/models/db.rb
class BlockPattern < ApplicationRecord
    has_many :block_positions
    has_many :item_patterns
  end

  # app/models/block_position.rb
class BlockPosition < ApplicationRecord
    belongs_to :block_pattern
    has_many :item_positions
  end
  
  # app/models/item_pattern.rb
  class ItemPattern < ApplicationRecord
    belongs_to :block_pattern
    has_many :item_positions
  end
  
  # app/models/item_position.rb
  class ItemPosition < ApplicationRecord
    belongs_to :item_pattern
  end
  