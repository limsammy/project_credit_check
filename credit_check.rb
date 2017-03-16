require 'pry'

card_number = "4929735477250543"

valid = false

# Your Luhn Algorithm Here
card_number_for_math = *(card_number.split('').map {|i| i.to_i})
card_number_for_math = card_number_for_math.reverse
card_number_times_two = card_number_for_math.map.with_index{|o,i| i.even? ? o : o * 2}
binding.pry
# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"