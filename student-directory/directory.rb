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
  puts "Please enter the details of the students starting with their name".center(10, "--")#allows for multiple values
  puts "To finish, just hit return twice".center(10, "--")# outputs how they can end the code
  students = []# create an empty array
  name = gets.chomp  # gets the first name
  while !name.empty? do # while name isnt equal to a empty line repeat the code
    #add the student hash to the array
    puts 'input their hobbie'.center(10, "--")
    hobbie = gets.chomp
    puts 'input their height'.center(10, "--")
    height = gets.chomp
    puts 'input their cohort'.center(10, "--")
    cohort = gets.chomp
    if cohort.empty?# if they havent entered a cohort it sets a default value
      cohort = 'november'
    end
    students << {name: name, cohort: cohort, hobbie: hobbie, height: height}# sets cohort of students to novermber and sets the varible name to name
    if students.count == 1# does the singular for 1
      puts "Now we have #{students.count} student please enter the next name".center(10, "--")
    else# else does the plural
      puts "Now we have #{students.count} students please enter the next name".center(10, "--")
    end
    # get another name from the user
    #name = gets.chomp
    name = gets.strip#alternative to chomp
  end
  # return the array of students
  students
end

def print_header# defines print header method
  puts "The students of the Villains Academy".center(10, "--")# puts the titles
  puts "------------------------------------".center(10, "--")
end


=begin # for first charecter version
def print(students)
  temp = 0
  puts 'enter a charecter' # asks for charecter
  char_ = gets.chomp.upcase# saves charecter
  students.each do |student|
    temp_charecter = (student[:name])[0]#sets temp as first charecter in name
    if (temp_charecter) == char_#only outputs names with specific first charecter
      temp += 1
      puts "#{temp}.#{student[:name]} (#{student[:cohort]} cohort)"# puts temp folowed by the student name then the student cohrt then the word cohort
    end
  end
end
=end

 # length version

=begin
def print(students)
  if !students.empty?#stops if array is empty
    exit
  end
  temp = 0
  count = 0
  #students.each do |student|
  while count < students.length.to_i # output without using each
    #if (student[:name]).length < 12
      temp += 1
      puts "#{temp}.#{(students[count])[:name]} (#{(students[count])[:cohort]} cohort), Hobbie is #{(students[count])[:hobbie]}, height is #{(students[count])[:height]}".center(10, "--")# puts temp folowed by the student name then the student cohrt then the word cohort
      count += 1
    #end
  end
end
=end

def print(students)# defines method print
  cohort_list = []# creates list
  students.each do |student|# itarates through adding students cohorts to a list
    cohort_list.push(student[:cohort])
  end
  (cohort_list.uniq).each do |cohort|# removes duplicate cohorts and itarates through
    puts "Students from the  #{cohort} cohort:"# outputs the cohort name
    students.each do |student|# itarates through cohort
      if student[:cohort] == cohort# if their cohort is the same as the cohort
        puts student[:name]# outputs the student name
      end
    end
  end
end


def print_footer(names)# defines method
  puts "Overall, we have #{names.count} great students".center(10, "--")# outputs the amount of students
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
