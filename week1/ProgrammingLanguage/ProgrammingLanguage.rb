class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  def array_printer(array)
  	array.each do | language |
    	puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  	end
  end



  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]


  #  aged_languages = array_of_languages.map do |language|
  # 	language.age += 1
  # 	language
  # end
  #    puts "The programming languages aged one year are: "

  # sorted_array = array_of_languages.sort_by {|i| i.age}

  # array_of_languages.shuffle
  # array_of_languages.delete_at(6)

 #To filter the array by AGE with REVERSE we do filter from Greater to Smaller
 # array_printer(sorted_array.reverse)   


  array_of_languages.map! do | language | 
  	language.name += "!!!"
  	language
  end 
  
  array_printer(array_of_languages)











