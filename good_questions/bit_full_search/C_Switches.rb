https://atcoder.jp/contests/abc128/tasks/abc128_c

N, M = gets.split(' ').map(&:to_i)
LIGHT_REL_SWITCH = M.times.map { gets.split(' ').map(&:to_i) }
MOD = gets.split(' ').map(&:to_i)

on = 0
[0, 1].repeated_permutation(N).each do |per|
  sum = 0
  LIGHT_REL_SWITCH.each_with_index do |switch_array, i|
    count = 0
    switch_array[0].times do |i|
      index = switch_array[i + 1] - 1
      count += 1 if per[index] == 1
    end
    sum += 1 if count % 2 == MOD[i]
  end
  on += 1 if sum == M
end

puts on
