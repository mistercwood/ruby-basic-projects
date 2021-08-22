
# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

def stock_picker(prices)

  profit_array = []

  prices.each_with_index { |price1, index1| 
    i = index1
    while i < (prices.length - 1) do
      profit_array << [ prices[i + 1] - price1, index1, i + 1 ]
      i += 1
    end
  }
 
  best_day = profit_array.reduce { |a, el| el[0] > a[0] ? el : a }
  print best_day[1, 2]

end

puts stock_picker([17,3,6,9,15,8,6,1,10])
