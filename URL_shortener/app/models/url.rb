class Url < ActiveRecord::Base

	ALPHABET = [('a'..'z').to_a, ('A'..'Z').to_a].flatten

	def self.generate_shortlink(url_length)
		# shortlink = " "
		# # url_length.times do |url|
		# # 	shortlink += ALPHABETH[rand(ALPHABETH.length)
		# # end
		# shortlink
		ALPHABET.sample(url_length).join
	end
end

