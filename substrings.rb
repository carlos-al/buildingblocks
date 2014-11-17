def substrings(string, dictionary)
	result = {}
	
	dictionary.each do |sub|
		result[sub]=0
		string.split.each do |word|
			if word.include?(sub)
				result[sub] += 1
			end
		end
	end
	result.delete_if {|key, value| value == 0}
	p result
end

