rails generate migration CreateBlockPatterns name:string
rails generate migration CreateBlockPositions block_pattern_id:integer x:integer y:integer
rails generate migration CreateItemPatterns block_pattern_id:integer pattern_id:integer
rails generate migration CreateItemPositions item_pattern_id:integer x:integer y:integer category:integer

rails generate model BlockPattern name:string
rails generate model BlockPosition block_pattern:references x:integer y:integer
rails generate model ItemPattern block_pattern:references pattern_id:integer
rails generate model ItemPosition item_pattern:references x:integer y:integer category:integer

# マイグレーションファイルをコピー
docker cp my_rails_app:/app/db/migrate ./db/migrate

# モデルファイルをコピー
docker cp my_rails_app:/app/app/models ./app/models
