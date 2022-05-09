https://atcoder.jp/contests/abc095/tasks/arc096_a

A, B, AB, X, Y = gets.split(' ').map(&:to_i)

result = A * X + B * Y
max = [X, Y].max
2.step(max * 2, 2) do |n|
  m = AB * n + A * ([X - n / 2, 0].max) + B * ([Y - n / 2, 0].max)
  result = m if m < result
end

puts result
