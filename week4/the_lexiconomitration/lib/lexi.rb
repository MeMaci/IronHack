class Lexiconomitron

	def eat_t(letters)
		letters.gsub(/[tT]/, '')
	end

	def shazam(array)

		output = [eat_t(array.first), eat_t(array.last)]

		output.each do | word |
			word.reverse!

			# split_word = reverse_word.split.first.last
			# spit_word.eat_t
		end

		output
		# first_word = array.first.eat_t
		# last_word = array.last.eat_t

		# fudge = []

		# first_word.push(fudge)
		# last_word.push(fudge)
	end
end