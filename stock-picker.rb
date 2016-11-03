puts 'Project 2: Stock Picker'

def stock_picker(prices_per_day)
  prices_per_day

  best_days = [0,1]
  max_profit = best_days[1] - best_days[0]

  for i in 0..prices_per_day.size-1
    for j in i..prices_per_day.size-1
      if max_profit < prices_per_day[j] - prices_per_day[i]
        max_profit = prices_per_day[j] - prices_per_day[i]
        best_days = [i,j]
      end
    end
  end
  return best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
