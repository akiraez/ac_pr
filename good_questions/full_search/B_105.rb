https://atcoder.jp/contests/abc106/tasks/abc106_b

N = gets.to_i

result = 0
(1..N).each do |n|
  next if n.even?
  count = 0
  (1..N).each do |i|
    break if n < i
    count += 1 if n % i == 0
    break result += 1 if count == 8
  end
end

puts result
