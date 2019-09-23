@students = []

def input_students
  puts "Please enter the details of the students starting with their name".center(10, "--")#allows for multiple values
  puts "To finish, just hit return twice".center(10, "--")# outputs how they can end the code
  name = gets.chomp  # gets the first name
  while !name.empty? do # while name isnt equal to a empty line repeat the code
    #add the student hash to the array
    students << {name: name, cohort: cohort, hobbie: hobbie, height: height}# sets cohort of students to novermber and sets the varible name to name
    puts "Now we have #{students.count} students please enter the next name".center(10, "--")
    # get another name from the user
    name = gets.chomp
  end
end

def print_header# defines print header method
  puts "The students of the Villains Academy".center(10, "--")# puts the titles
  puts "------------------------------------".center(10, "--")
end



def print_student_list# defines method print
  @students.each do |student|# itarates through adding students cohorts to a list
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end


def print_menu
  puts """
  1. Input the students
  2. Show the students
  9. Exit
  """
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      students = input_students# input the students
    when "2"
      print_header
      print(students)#show the students
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end
def print_footer(names)# defines method
  puts "Overall, we have #{names.count} great students".center(10, "--")# outputs the amount of students
end

interactive_menu
