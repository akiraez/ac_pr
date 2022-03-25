https://atcoder.jp/contests/abc243/tasks/abc243_c

n = gets.to_i
coordinate = n.times.map { gets.split.map(&:to_i) }
direction_array = gets.chomp.split('')

result = 'No'

x_y_direction = coordinate.zip(direction_array).map { |xy, d| xy.flatten.push(d) }
x_y_d_group_by_y = x_y_direction.group_by{|x_y_d| x_y_d[1]}.select { |_, v| v.size >= 2 }

x_y_d_group_by_y.each_value do |x_y_d_array|
  if (['R', 'L'] - x_y_d_array.flatten).empty?
    move_right = x_y_d_array.select { |x_y_d| x_y_d[2] == 'R' }
    move_left = x_y_d_array.select { |x_y_d| x_y_d[2] == 'L' }
    min = move_right.size > 2 ? move_right.min[0] : move_right[0][0]
    max = move_left.size > 2 ? move_left.max[0] : move_left[0][0]
    break result = 'Yes' if min < max
  end
end

puts result
