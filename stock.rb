def stock(values)
	low = 100000
	high = 0
	values.each do |i|
		high = i if i > high
		low = i if i < low
	end
	puts low, high
end
