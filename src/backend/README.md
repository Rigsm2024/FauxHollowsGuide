# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

DB構築
docker compose up -d

rails generate migration CreateBlockPatterns name:string
rails generate migration CreateBlockPositions block_pattern_id:integer x:integer y:integer
rails generate migration CreateItemPatterns block_pattern_id:integer pattern_id:integer
rails generate migration CreateItemPositions item_pattern_id:integer x:integer y:integer category:integer

rails generate model BlockPattern name:string
rails generate model BlockPosition block_pattern:references x:integer y:integer
rails generate model ItemPattern block_pattern:references pattern_id:integer
rails generate model ItemPosition item_pattern:references x:integer y:integer category:integer

できたファイルをローカルに持ってくることで毎度マイグレーション手動実行する必要がなくなる
docker cp src-backend-1:/rails/db/migrate ./db/migrate
docker cp src-backend-1:/rails/app/models ./app/models

docker compose run backend bundle exec rake db:seed
docker exec -it src-db-1 mysql -u user -p -h db my_database

リセット
docker compose down
docker volume rm src_db_data
docker volume prune

他
docker exec -it src-backend-1 bash