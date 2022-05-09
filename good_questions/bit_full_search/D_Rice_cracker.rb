https://atcoder.jp/contests/joi2008yo/tasks/joi2008yo_e

R, C = gets.chomp.split(' ').map(&:to_i)
FIELD = R.times.map { gets.chomp.split(' ').map(&:to_i) }
result = 0

[0, 1].repeated_permutation(R).each do |per|
  copy_field = FIELD.map.with_index { |row, i| per[i] == 1 ? row.map { |num| 1 ^ num } : row }
  sum = 0
  C.times do |c|
    one = copy_field.sum { |r| r[c] }
    one = R - one if one * 2 < R
    sum += one
  end
  result = sum if result < sum
end

puts result
