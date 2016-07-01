class Project < ActiveRecord::Base
	has_many :time_entries
	validates :name, uniqueness: true, presence: true, length: {maximum: 30}, format: {with: /\w*\s*/}
	
	
	def total_hours_in_month(month, year)

		date = Time.new(year, month)

		entries_in_month = time_entries.where(
				date: date..date_end_of_month
			)

		hours = entries_in_month.sum { |e| e.hours}
		minutes = entries_in_month.sum { |e| e.minutes}

		hours + (minutes/60)
		#remember self is the little project not Project.. SELF is an instant
	end

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


