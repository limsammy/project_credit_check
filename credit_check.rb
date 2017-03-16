require 'pry'

card_number = "4929735477250543"
invalid_test = "5541801923795240"

def check_card(card_number)
	valid = false
	final = []

	card_number = *(card_number.split('').map {|i| i.to_i})
	card_number= card_number.reverse
	card_number_times_two = card_number.map.with_index{|o,e| e.even? ? o : o * 2}
	
	card_number_times_two.each do |i|
		if(i > 9)
			first,sec = i.to_s.split('').map{|d| d.to_i}
			final.push(first + sec)
		else
			final.push(i)
		end
	end

	sum_final = final.inject(:+)
	if(sum_final % 10 == 0)
		valid = true
		puts "The number is valid!"
	else
		puts "The number is invalid!"
	end
end

check_card(card_number)
check_card(invalid_test)