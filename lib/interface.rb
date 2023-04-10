require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/core-2.7.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/core-2.7.5/String.html#method-i-chomp
students = []
name = nil
final_sentense = ""
puts "Type a student name:"

name = gets.chomp

while name != ""

  students << name
  puts "Type another student name or press enter to finish:"

  name = gets.chomp

end
# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list

students = wagon_sort(students)

if students.length == 1
  puts "Congratulations! Your Wagon has 1 student"
  puts students[0]
else
  students.each.with_index do |c, i|
  if i == students.length - 2
    final_sentense << c << " and "

  elsif i != students.length - 1
    final_sentense << c << ", "

  else
    final_sentense << c
  end
  puts "Congratulations! Your Wagon has #{students.length} students"
  puts final_sentense
  end
end
