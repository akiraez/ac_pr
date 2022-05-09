https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_d

N = gets.to_i
S = gets.chomp.split('')
range = (0..9).to_a.map(&:to_s)
number_permutation = range.repeated_permutation(3).to_a

group_by_number = {}
range.each { |n| group_by_number[n] = S.each_index.select { |i| S[i] == n } }

result = 0
number_permutation.each do |num_array|
  index, count = -1, 0
  3.times do |i|
    index_array = group_by_number[num_array[i]]
    break if index_array.empty?
    index = index_array.bsearch { |num| num > index }
    break if index.nil?
    count += 1
  end
  result += 1 if count == 3
end

puts result
