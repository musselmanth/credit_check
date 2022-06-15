card_number = "5541808923795240"

# Your Luhn Algorithm Here

sum = 0

card_number.split(//).each_with_index do | digit, index |
  index.even? ? sum += (digit.to_i * 2).digits.sum : sum += digit.to_i
end

is_valid = sum % 10 == 0
# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
puts "The number #{card_number} is #{is_valid ? 'valid' : 'invalid'}!"
