https://atcoder.jp/contests/abc002/tasks/abc002_4

N, M = gets.split(' ').map(&:to_i)
GROUP_LIST = M.times.map { gets.split(' ').map(&:to_i) }

result = 1
[0, 1].repeated_permutation(N).each do |per|
  target = []
  (1..N).each_with_index { |n, i| target << n if per[i] == 1 }
  rel_list = target.combination(2)
  flg = 0
  rel_list.each { |rel| GROUP_LIST.each { |group| flg += 1 if rel == group } }
  size = rel_list.to_a.size
  result = target.size if flg == size && target.size > result
end

puts result
