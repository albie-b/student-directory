#puts students into an array
=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november},
]
=end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # gets the first name
  name = gets.chomp
  # while the name is not empty repeat this code
  while !name.empty? do # while name isnt equal to a empty line
    #add the student hash to the array
    students << {name: name, cohort: :november}# sets cohort of students to novermber and sets the varible name to name
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of the Villains Academy"
  puts "------------------------------------"
end

def print(students)
  temp = 0
  students.each do |student|
    temp += 1
    puts "#{temp}.#{student[:name]} (#{student[:cohort]} cohort)"# puts temp folowed by the student name then the student cohrt then the word cohort
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
