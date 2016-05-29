require_relative "../lib/fizzbuzz.rb"
require "spec_helper"


describe FizzBuzz do

	before  :each do
	@fizzbuzz = FizzBuzz.new
	end

	describe "#fizz?" do
		it "retun true for numbers can be devided to 3" do
			expect(@fizzbuzz.fizz?(9)).to eq(true)
		end
	end

	describe "#buzz" do
		it "return Buzz for numbers can be devided to 5" do
			expect(@fizzbuzz.buzz(10)).to eq(true)
		end
	end

	describe "#fizz_buzz" do
		it "return FizzBuzz for numbers can be devided to 3 and 5" do
			expect(@fizzbuzz.fizz_buzz(15)).to eq(true)
		end
	end
	
	describe "#counter" do
		it "should count from 1 to a number, return a new array with that number of elements" do
			expect(@fizzbuzz.fizz_counter(100).length).to eq(100)
	  	end
	  	#in an array count start with 0, so number 2 is actually 3!
		it "should should replace multiples of 3 with fizz" do
			expect(@fizzbuzz.fizz_counter(100)[2]).to eq("Fizz")
		end
		it "should replace multiples of 5 with buzz" do
			expect(@fizzbuzz.fizz_counter(100)[4]).to eq("Buzz")
		end

		it "should replace multiples of 5 and 3 with fizzbuzz" do
			expect(@fizzbuzz.fizz_counter(100)[14]).to eq("FizzBuzz")
		end
	end
  
end