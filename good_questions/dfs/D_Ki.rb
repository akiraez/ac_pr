https://atcoder.jp/contests/abc138/tasks/abc138_d

N, Q = gets.split(' ').map(&:to_i)

tree = Array.new(N) { Array.new([]) }
(N - 1).times do
  a, b = gets.split(' ').map(&:to_i)
  tree[a - 1] << b - 1
  tree[b - 1] << a - 1
end

counter = Array.new(N, 0)
Q.times do
  a, b = gets.split(' ').map(&:to_i)
  counter[a - 1] += b
end

que = [0]
visited = Array.new(N, false)

while que.size > 0
  start = que.shift
  visited[start] = true
  tree[start].each do |index|
    next if visited[index]
    que << index
    counter[index] += counter[start]
  end
end

puts counter.join(' ')
