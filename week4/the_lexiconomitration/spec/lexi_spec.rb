require_relative "../lib/lexi.rb"
require "spec_helper"




describe Lexiconomitron do 
	before :each do
		@lexi = Lexiconomitron.new
		end


  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  describe "#shazam" do
    it "reverses letter and within words, returns only first and law words and works with Lexi" do
      expect(@lexi.shazam(["great", "scott", "good", "got!"])).to eq(["aerg", "!og"])
    end
  end
end