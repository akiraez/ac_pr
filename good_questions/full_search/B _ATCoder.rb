https://atcoder.jp/contests/abc122/tasks/abc122_b

S = gets.split('')
ACGT = %w(A C G T)

count = 0
result = []

S.each_with_index do |s, i|
  ACGT.each { |t| break count += 1 if s == t }
  count = 0 if result.last == count
  result << count
end

puts result.max
