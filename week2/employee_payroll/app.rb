require_relative('lib/employeepayroll')
require_relative('lib/payroll')

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 100000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
Mel = HourlyEmployee.new('Mel', 'Mel@gmail.com', 15, 12)
Yemani = HourlyEmployee.new('Yemani', 'Yemani@gmail.com', 15, 10)

employees = [josh, nizar, ted, Mel, Yemani]

payroll = Payroll.new(employees)

payroll.pay_employees
payroll.notify_employee(nizar)

# puts josh.calculate_salary 
# puts nizar.calculate_salary
# puts ted.calculate_salary