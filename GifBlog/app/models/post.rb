class Post < ActiveRecord::Base
	has_many :votes

	def self.show_post
		order(title: :ASC)
	end

#create UPVOTE in the MODEL
	def upvote
		votes = self.nov
		update(nov: votes +1)
	end

	def downvote
		votes = self.nov
		update(nov: votes -1)
	end
end
