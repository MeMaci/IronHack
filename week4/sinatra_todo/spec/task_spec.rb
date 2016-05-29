require_relative "../lib/task.rb"
require "spec_helper"

describe Task do
	before :each do
		@task = Task.new("Walk the dog")
	end

	describe "#complete?" do
		it "returns false when a task first created" do
			expect(@task.complete?).to eq(false)
		end
	end

	describe "#complete!" do
		it "returns true when a task completed" do
			@task.complete!
			expect(@task.complete?).to eq(true)
		end
	  
	end

	describe "#make_incomplete!" do
		it "returns a completed task to incomplete" do
			@task.make_incomplete!
			expect(@task.complete?).to eq(false)
		end
	end

	describe "#update_content!" do
		it "changes the content of the task" do
			@task.update_content!("buy the milk")
			expect(@task.content).to eq("buy the milk")
		end
	  
	end
  
end