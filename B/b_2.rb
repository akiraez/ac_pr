https://atcoder.jp/contests/abc243/tasks/abc243_b

num = gets.to_i
num_array_1 = gets.split(' ').map(&:to_i)
num_array_2 = gets.split(' ').map(&:to_i)

uniq_number = [num_array_1, num_array_2].inject(&:&)

position_array_1 = uniq_number.map { |num| num_array_1.index(num) }
position_array_2 = uniq_number.map { |num| num_array_2.index(num) }

result = position_array_1.zip(position_array_2).map do |p_1, p_2|
  p_1 == p_2
end

puts result.count(true)
puts result.count(false)
