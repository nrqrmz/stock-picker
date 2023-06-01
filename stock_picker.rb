def stock_picker(stocks_arr)
  n = stocks_arr.size - 1

  hash = {}

  n.times do |i|
    (i + 1...stocks_arr.size).each do |j|
      hash[stocks_arr[j] - stocks_arr[i]] = [i, j] if stocks_arr[i] < stocks_arr[j]
    end
  end

  hash.max_by { |k, _| k }.last
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1,4]  # for a profit of $15 - $3 == $12
