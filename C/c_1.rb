https://atcoder.jp/contests/abc244/tasks/abc244_c

STDOUT.sync = true

N = gets.to_i
used_number_array = []
num_array = (1..(2 * N + 1)).to_a

num_array.each do |num|
  next if used_number_array.include?(num)
  used_number_array << num
  puts num
  v = gets.to_i
  break if v == 0
  used_number_array << v
end
