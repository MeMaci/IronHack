class WordCounter
	def initialize(sentence)
		@sentence = sentence
	end

	def count_words
		words = @sentence.split
		words.length
	end

	def count_letters
		@sentence.length
	end

	def reverse_the_text
		@sentence.reverse
	end

	def uppercase
		@sentence.upcase
	end

	def lowercase
		@sentence.downcase
	end
end