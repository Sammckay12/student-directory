def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.chomp
  # while the name is not empty, repeat:
  while !name.empty? do
    puts "Please enter country of birth: "
    birth_country = gets.chomp
    puts "Please enter your age: "
    age = gets.chomp
    # add the student hash to the array
    students << {name: name, birth_country: birth_country, age: age, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter another name:"
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-----------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, from #{student[:birth_country]}, (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end
# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
