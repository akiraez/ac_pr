https://atcoder.jp/contests/abc244/tasks/abc244_b

num = gets.to_i
str = gets

str_array = str.split('')
x = 0
y = 0
curent_direction = 0
direction_array = [[1, 0], [0, -1], [-1, 0], [0, 1]]

str_array.each do |s|
  if s == 'S'
    dx, dy = direction_array[curent_direction]
    x += dx
    y += dy
  elsif s == 'R'
    curent_direction = (curent_direction + 1) % 4
  end
end

puts "#{x} #{y}"
