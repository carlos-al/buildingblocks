def stock_picker(values)

	buy = 0
	sell = 1
	index = -1
	current_profit = profit(values[buy], values[sell])

	values.each do |i|
		index+=1
		(index+1..values.length-1).each do |k|
			if current_profit < profit(values[index], values[k])
				current_profit = profit(values[index], values[k])
				buy = index
				sell = k
			end
		end
	end
	puts "buy on #{buy}, sell on #{sell} for a profit of #{current_profit}"
end


def profit(buy, sell)
	sell-buy 
end
