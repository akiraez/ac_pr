https://atcoder.jp/contests/abc007/tasks/abc007_3

R, C = gets.split(' ').map(&:to_i)
sy, sx = gets.split(' ').map { |i| i.to_i - 1 }
gy, gx = gets.split(' ').map { |i| i.to_i - 1 }
field = R.times.map { gets.chomp.split('') }
visited = Array.new(R) { Array.new(C, 0) }
DIR = [[1, 0], [-1, 0], [0, 1], [0, -1]]

que = [[sy, sx]]
while que.size > 0
  sy, sx = que.shift
  DIR.each do |dx, dy|
    ny, nx = sy + dy, sx + dx
    next if nx >= C || ny >= R || nx < 0 || ny < 0
    next if field[ny][nx] == '#' || visited[ny][nx] != 0
    visited[ny][nx] = visited[sy][sx] + 1
    que << [ny, nx]
  end
end

puts visited[gy][gx]
