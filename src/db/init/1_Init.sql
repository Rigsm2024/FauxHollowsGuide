-- 初期設定
DROP USER IF EXISTS 'myapp'@'%';
CREATE USER 'myapp'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'myapp'@'%';
FLUSH PRIVILEGES;

-- データベースの作成と移動
CREATE DATABASE IF NOT EXISTS my_database;

