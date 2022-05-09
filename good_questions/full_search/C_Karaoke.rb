https://atcoder.jp/contests/pakencamp-2019-day3/tasks/pakencamp_2019_day3_c

N, M = gets.split(' ').map(&:to_i)
record = N.times.map { gets.split(' ').map(&:to_i).combination(2).map { |arr| arr.max } }

puts record.transpose.map(&:sum).max
