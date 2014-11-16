def generar_clave(shift = 0)
	clave={}

	('a'..'z').each do |c|			#generate downcase cipher
		temp =  (c.ord + shift).chr
		('a'..'z').include?(temp) ? 
							clave[c] = temp :
							clave[c] = clave[c] = ('a'..'z').to_a[wrap_downcase(c, shift) - 1]  
	end

	('A'..'Z').each do |c|
		temp =  (c.ord + shift).chr
		('A'..'Z').include?(temp) ? 
							clave[c] = temp :
							clave[c] = clave[c] = ('A'..'Z').to_a[wrap_upcase(c, shift) - 1]  
	end
	clave
end
	
def wrap_downcase(char, shift)
	(char.ord + shift) % (26+96) #returns wrap 'size', + 96 is due to ascii 'a' being 97
end

def wrap_upcase(char, shift)
	(char.ord + shift) % (26+64) #returns wrap 'size', + 64 is due to ascii 'A' being 65
end


def caesar_cipher(string, shift)
	dict = generar_clave(shift)
	new = ''
	string.each_char do |c|
		if dict.has_key?(c)
			new << dict[c]
		else
			new << c
		end
	end
	new
end
