module HourlyPayable
	def calc_payment
		@hours_worked * @hourly_rate
	end
end
