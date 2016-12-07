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
# nothing happens until we call the methods
students = input_students
some_students(students)
