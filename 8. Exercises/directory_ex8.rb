def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.chomp
  puts "What is the start month of your cohort? (3 letter Month abbrv.)"
  cohort = gets.chomp
  # while the name is not empty, repeat:
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort.to_sym}
    if students.count != 1
      puts "Now we have #{students.count} students"
    else
      puts "Now we have #{students.count} student"
    end
    # get another name from the user
    name = gets.chomp
    cohort = gets.chomp
# set default value if left blank.
    if cohort == ""
      cohort = 'Nov'.to_sym
    end
  end
  # return the array of students
  p students
end

def print_header
  puts "The students of Villains Academy".center(60)
  puts "-----------------"
end

# def print(students)
#   students.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort)".center(60)
#   end
# end

def print(students)
  cohort_array = students.map{ |x| x[:cohort]}.uniq
  cohort_array.each { |c|
  puts "Students in cohort #{c}:"
  students.each { |s| puts "#{s[:name]}" if s[:cohort] == c  }
 }
end


def print_footer(names)
  puts "Overall, we have #{names.count} great students.".center(60)
end
# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
