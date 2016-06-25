class Project < ActiveRecord::Base

# this is a class method

	def self.clean_old
		# we have to put 1 week as a place holder otherwise it can be messed up by
		# user_input.. to avoid that we put 1week as a place holder
		self.where("created_at < ?", 1.week.ago).destroy_all
	end

# this is an instant method
	# def Hello
	# 	hello
	# end
	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end
end


# this is how to call an instant method
# p = Project.new
# p.hello


