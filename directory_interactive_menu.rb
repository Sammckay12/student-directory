def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.chomp
  # while the name is not empty, repeat:
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(60)
  puts "-----------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(60)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students.".center(60)
end

def some_students(students)
  if students.count >= 1
    print_header
    print(students)
    print_footer(students)
  else
    puts "There are no students enrolled."
  end
end  

def interactive_menu
  students = []
  loop do
  # 1. print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
  # 2. read the input and save it into a variable
  selection = gets.chomp
  # 3. do what the user has asked
    case selection
      when "1"
        # input the students
        students = input_students
      when "2"
        # show the students
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit # this will cause the program to terminate
      else
        puts "I don't know what you meant, try again."
    end
  end
end
# nothing happens until we call the methods

interactive_menu
some_students(students)