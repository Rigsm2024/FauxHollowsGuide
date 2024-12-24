# matrix_rotation.rb

# 6x6行列の定数定義
MATRIX = [
  [1, 2, 3, 4, 5, 6],
  [7, 8, 9, 10, 11, 12],
  [13, 14, 15, 16, 17, 18],
  [19, 20, 21, 22, 23, 24],
  [25, 26, 27, 28, 29, 30],
  [31, 32, 33, 34, 35, 36]
].freeze

# x, y座標を受け取り、deg（角度）だけ回転した新しい座標を返す関数
def rotate_matrix(x, y, deg)
  case deg
    when 0
        [x, y]
    when 90
        [y, 6 - x + 1]
    when 180
        [6 - x + 1, 6 - y + 1]
    when 270
        [6 - y + 1, x]
    else
        raise ArgumentError, "deg must be one of 0, 90, 180, 270"
  end
end
  


# テスト用
if __FILE__ == $0
  x, y, deg = 2, 3, 90
  new_x, new_y = rotate_matrix(x, y, deg)
  puts "Original coordinates: (#{x}, #{y})"
  puts "New coordinates after rotating by #{deg} degrees: (#{new_x}, #{new_y})"
end
