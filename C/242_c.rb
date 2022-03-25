https://atcoder.jp/contests/abc242/tasks/abc242_c

digit = gets.to_i
mod = 998244353

quantity_array = Array.new(9, 1)

1.upto digit do |d|
  reult_quantity_array = Array.new(9, 0)
  (0..8).each do |num|
    next if d == 1
    if num == 0
      reult_quantity_array[num] = (quantity_array[num] + quantity_array[num + 1]) % mod
    elsif num == 8
      reult_quantity_array[num] = (quantity_array[num] + quantity_array[num - 1]) % mod
    else
      reult_quantity_array[num] = (quantity_array[num - 1] + quantity_array[num] + quantity_array[num + 1]) % mod
    end
  end
  d == 1 ? quantity_array : quantity_array = reult_quantity_array
end
