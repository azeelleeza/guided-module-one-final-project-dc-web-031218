BLUE='\033[1;34m'
NC='\033[0m'

def greet
summary = "\n\nWelcome to School Days, the command line
solution to registering for classes and
other miscellaneous questions you might have!

"

puts summary.lines.map { |line| line.center(82).light_blue.bold }
end

def interactive
  puts "Please select one of the following:".center(82).magenta.bold


  puts "\n\t\t\t\t1 - Student\n\t\t\t\t2 - Teacher\n\t\t\t\t3 - Exit".magenta.bold
  user_selection = gets.chomp
  system('clear')

  if (user_selection == "")
    interactive
  elsif user_selection == '1'
    puts "_____________________________________"
    student_method
  elsif user_selection == '2'
    puts "_____________________________________"
    teacher_method
  elsif user_selection == '3'
    puts "Have a nice day!"
    exit
  end


end
