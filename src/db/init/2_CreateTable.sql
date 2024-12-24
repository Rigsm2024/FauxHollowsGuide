USE my_database;

-- ブロックパターンテーブル
CREATE TABLE block_patterns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- ブロック配置テーブル
CREATE TABLE block_positions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    block_pattern_id INT NOT NULL,
    x INT NOT NULL,
    y INT NOT NULL,
    FOREIGN KEY (block_pattern_id) REFERENCES block_patterns(id) ON DELETE CASCADE
);

-- アイテムパターンテーブル
CREATE TABLE item_patterns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    block_pattern_id INT NOT NULL,
    pattern_id INT NOT NULL,
    FOREIGN KEY (block_pattern_id) REFERENCES block_patterns(id) ON DELETE CASCADE
);

-- アイテム配置テーブル
CREATE TABLE item_positions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_pattern_id INT NOT NULL,
    x INT NOT NULL,
    y INT NOT NULL,
    type INT NOT NULL,
    FOREIGN KEY (item_pattern_id) REFERENCES item_patterns(id) ON DELETE CASCADE
);
