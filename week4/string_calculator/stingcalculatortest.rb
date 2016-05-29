require_relative('lib/stringcalculator')

calc = StringCalculator.new

if calc.add("") == 0
	puts "Returned zero for an empty string"
else
	puts "Something went wrong with empty string"
end


if calc.add("1") == 1
	puts "Returned same number for a single number"
else
	puts "Something went wrong with number"
end


if calc.add("1,2,3") == 6
	puts "Returned total for a string full of numbers"
else
	puts "Something went wrong within the string"
end
