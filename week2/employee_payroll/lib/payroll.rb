class Payroll
	attr_reader :employee
	def initialize(employees)
		@employees = employees
	end

	def notify_employee (employee)
		@employees.each do | x |
			puts "#{x.email} : Payment wired today :)"
		end
	end

	def pay_employees
		total = 0
		@employees.each do | x |
			puts "#{x.name} gets paid #{x.calculate_salary}"
			total += x.calculate_salary
		end
		puts "The total amount of salary paid is #{total}"
	end
end