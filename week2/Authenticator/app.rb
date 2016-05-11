# app.rb
require("pry")
require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")
require_relative('lib/counterpicker')

auth = Authenticator.new("Josh", "swordfish")

puts "Enter your username!"
username_input = gets.chomp
puts "Enter your password!"
password_input = gets.chomp


# Get login credentials
if auth.authenticate?(username_input, password_input)
	# Call upon Authenticator to verify login credentials
	puts "Welcome back, #{username_input}"
	puts "Enter a sentence!"
	# Do word counter things
	sentence_input = gets.chomp
	my_counter = WordCounter.new(sentence_input)
	
	binding.pry
	puts "Enter an operation: count words|\n count letters|\n reverse the text|\n convert to uppercase|\n or convert to lowercase?"
	operation = gets.chomp
	counter_picker = Counterpicker.new(operation,my_counter)
	counter_picker.perform_operation

else
 	puts "Go away #{name_input}. No word counter for you!"
end