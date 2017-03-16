require 'pry'

card_number = "4929735477250543"

def check_card(card_number)
	valid = false
	final = []

	card_number = *(card_number.split('').map {|i| i.to_i})
	card_number= card_number.reverse
	card_number_times_two = card_number.map.with_index{|o,e| e.even? ? o : o * 2}
	card_number_times_two.each do |i|
		if(i > 9)
			first,sec = i.to_s.split('').map{|d| d.to_i}
			final << (first + sec)
	end
	binding.pry
end

check_card(card_number)
# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"