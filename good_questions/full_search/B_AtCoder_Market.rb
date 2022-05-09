https://atcoder.jp/contests/s8pc-6/tasks/s8pc_6_b

N = gets.to_i
A = N.times.map { gets.split(' ').map(&:to_i) }
en, ex = A.transpose.map { |e| e.sort[e.length / 2] }

sec = 0
A.each { |ai, bi| sec += (en - ai).abs + (ai - bi).abs + (bi - ex).abs }

puts sec
