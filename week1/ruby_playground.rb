i = 1

while i<100
	if i % 3 == 0 && i % 5 == 0
		puts "FizzBuzz"
	elsif i % 3 == 0
		puts "Fizz"
	elsif i % 5 == 0
		puts "Buzz"
	else
		puts i
    end
    i += 1

end

def taste(food)
  if food == "bacon"
    puts "Yummy!!! BACON!!!"
  elsif food == "spinach"
  	puts "Urgh..."
  else food == ""
  	puts "Can I have some bacon on the side?"
  end
end

taste "spinach"
taste "bacon"
taste "pasta"