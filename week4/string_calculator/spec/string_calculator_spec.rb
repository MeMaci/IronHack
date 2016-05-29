require_relative "../lib/stringcalculator"
require "spec_helper"

describe "StringCalculator" do
	it "returns 0 for my empty string" do
		expect(StringCalculator.new.add("")).to eq(0)
	end
	
	it "returns 3 just that number" do
		expect(StringCalculator.new.add("3")).to eq(3)
	end
end