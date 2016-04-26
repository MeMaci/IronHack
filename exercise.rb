puts "What is the source file?"
source_file = gets.chomp
puts "What is the destination file?"
source_file_contents = gets.chomp
source_file_contents = IO.read(source_file)
IO.write(source_file, source_file_contents)  
 #replace file_name and file_contents with the correct variables