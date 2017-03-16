class CardChecker
	@card_type = "NOT A CARD"

	def type_card(card_number)
		if(card_number.to_s[0..2] == "342")
			@card_type = "American Express"
		else
			@card_type = "Default"
		end
	end

	def check_card(card_number, type=type_card(card_number))
		puts "Checking card #{card_number}....."
		puts "Card Type: #{@card_type}"

		valid = false
		final = []

		card_number = *(card_number.split('').map {|i| i.to_i})
		card_number = card_number.reverse
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
end

card_number1 = "4929735477250543"
invalid_test = "5541801923795240"

am_ex = "342804633855673"
invalid_test2 = "342801633855673"

check = CardChecker.new
check.check_card(card_number1)
check.check_card(invalid_test)
check.check_card(am_ex)
check.check_card(invalid_test2)

