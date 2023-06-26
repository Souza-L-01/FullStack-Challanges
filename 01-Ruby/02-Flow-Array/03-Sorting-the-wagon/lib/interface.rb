require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/core-2.7.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/core-2.7.5/String.html#method-i-chomp
# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list

students = []
input = nil

while input != ""
  puts "Enter a student name (or type enter to exit):"
  input = gets.chomp
  students << input if input != ""
end

sorted_students = wagon_sort(students)
# num_students = sorted_students.size

if sorted_students.count == 1
  puts "Congratulations! Your Wagon has #{sorted_students.count} student:"
else
  puts "Congratulations! Your Wagon has #{sorted_students.count} students:"
end
puts sorted_students.join(", ").gsub(/,([^,]*)$/, ' and\1')
