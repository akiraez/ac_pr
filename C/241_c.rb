https://atcoder.jp/contests/abc241/tasks/abc241_c

# TREになってしまうので改善案を模索中

n = gets.to_i
str_array = readlines.map(&:chomp).map { |str| str.split('') }

def yes; puts :Yes; exit; end

def reult(target_array, n, dy, dx)
  0.upto(n - 1) do |y|
    0.upto(n - 1) do |x|
      nx, ny = 0, 0
      b = 0
      b += 1 if target_array[y][x] == '.'
      0.upto(4) do |c|
        uy, ux = y + (ny += dy), x + (nx += dx)
        break if [uy, ux].any?(n)
        b += 1 if target_array[uy][ux] == '.'
        yes if c == 4 && b <= 2
      end
    end
  end
end

reult(str_array, n, 0, 1)
reult(str_array, n, 1, 0)
reult(str_array, n, 1, 1)
reult(str_array, n, 1, -1)

puts 'No'
