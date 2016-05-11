class Counterpicker
	def initialize(operation, word_counter)
		@operation = operation
		@word_counter = word_counter
	end

	def perform_operation

		if @operation == "count words"
			# my_counter.count_words
			puts "The number of words in your sentence was #{@word_counter.count_words}"
		elsif @operation == "count letters"
			puts @word_counter.count_letters
		elsif @operation == "reverse the text"
			puts @word_counter.reverse_the_text
		elsif @operation == "convert to uppercase"
			puts @word_counter.uppercase
		elsif @operation == "convert to lowercase"
			puts @word_counter.lowercase
		else
			puts "Your action is not valid"
		end
		
	end
	
end