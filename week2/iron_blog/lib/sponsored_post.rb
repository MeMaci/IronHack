

class SponsoredPost < Post
	#Lets inherit and just override the display method from our post class
	def initialize(title, time, text)
		title = "******** #{title} *******"
		super(title, time, text)
	end

end