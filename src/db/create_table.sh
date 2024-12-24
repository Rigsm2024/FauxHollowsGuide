rails generate migration CreateBlockPatterns name:string
rails generate migration CreateBlockPositions block_pattern_id:integer x:integer y:integer
rails generate migration CreateItemPatterns block_pattern_id:integer pattern_id:integer
rails generate migration CreateItemPositions item_pattern_id:integer x:integer y:integer category:integer
