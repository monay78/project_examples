bill = 0
while true do
puts "How much is your bill? (in dollars)"
bill = gets.chomp!
bill = bill.to_i
break if (bill.is_a? Integer) || (bill.is_a? Float)
end

while true do
puts "What percent would you like to tip?"
tip_percent = gets.chomp!
tip_percent = tip_percent.to_i
break if (tip_percent.is_a? Integer) || (tip_percent.is_a? Float)
end



while true do
puts "What is the number of people at your table?"
number_people = gets.chomp!
number_people = number_people.to_i
break if (number_people.is_a? Integer) || (number_people.is_a? Float)
end

bill = bill.to_f
tip_percent = tip_percent.to_f/100
number_people = number_people.to_f


total_bill = (bill * tip_percent) + bill


each_bill = total_bill / number_people



puts "Your total bill was $ #{total_bill.round(2)}"
puts "Each person should pay $ #{each_bill.round(2)}"
