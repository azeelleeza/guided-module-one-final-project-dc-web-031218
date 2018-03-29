def student_method
  puts "\nPlease enter your Student ID:"
  given_id = gets.chomp
  student_screen(given_id)
end

def student_screen(given_id)
  puts "\nHello #{Student.find(given_id).first_name}"
  puts "You can:\n1 - Get your GPA\n2 - View your report card\n3 - Register for a class\n4 - View all classes and teachers\n5 - See total tuition cost\n6 - Main Screen"
  selection = gets.chomp
puts "_____________________________________"


  if selection == ""
    puts "Invalid selection"
    student_method
  elsif selection == '1'
    Student.find(given_id).get_gpa
    # puts "_____________________________________"

  elsif selection == '2'
    Student.find(given_id).report_card
    # puts "_____________________________________"

  elsif selection == '3'
    ##puts all classes with ID
    print_course_with_id
    puts "Which course would you like to register for?"
    id = gets.chomp
    Student.find(given_id).register_for_class(id)
    # puts "_____________________________________"

  elsif selection == '4'
    Student.find(given_id).my_classes
    # puts "_____________________________________"

  elsif selection == '5'
    Student.find(given_id).total_tuition_cost
    # puts "_____________________________________"
  else
    puts "_____________________________________"
    interactive
  end
  puts "_____________________________________"
  student_screen(given_id)
end

def print_course_with_id
  # binding.pry
  puts tp Course.all, :id, :subject
end
