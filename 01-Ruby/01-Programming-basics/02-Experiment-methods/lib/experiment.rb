# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Integer, and Array classes!

def get_rid_of_surrounding_whitespaces(a_string)
  a_string.strip
  # TODO: return a copy of the string with leading and trailing whitespaces removed
  # example: get_rid_of_surrounding_whitespaces("  hey yo  ") => "hey yo"
end
# puts get_rid_of_surrounding_whitespaces("  hey yo  ")

def belongs_to?(a_string, a_word)
  # "hello".include? "lo"
  a_string.include?(a_word)
  # TODO: return true if a_string contains a_word
  # example: belongs_to?("hey jude", "jude") => true
end
# puts belongs_to?("hey jude", "jude")
# puts "hey jude".include? "jude"

def replace(initial_string, old_letter, new_letter)
  # "hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
  # initial_string.gsub("old_letter", "new_letter")
  initial_string.gsub(old_letter, new_letter)
  # TODO: return a copy of the string with the new letter replacing the old one
  # example: replace("casanova", "a", "o") => "cosonovo"
end
# puts replace("casanova", "a", "o")

def exactly_divide(an_integer, a_divider)
  an_integer.to_f / a_divider
  # TODO: return division of an_integer by a_divider (computing the floating division, NOT the euclidean one)
  # example: exactly_divide(13, 4) => 3.25
end
# puts exactly_divide(13, 4)

def divisible_by_two?(an_integer)
  (an_integer % 2).zero?
  # float % other → floatclick to toggle source
  # Returns the modulo after division of float by other.
  # TODO: return true if an_integer is divisible by 2
  # example: divisible_by_two?(6) => true
end
# puts divisible_by_two?(6)

def random_subset(an_array, sample_size)
  # a = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
  # a.sample         #=> 7
  # a.sample(4)      #=> [6, 4, 2, 5]
  an_array.sample(sample_size)
  # TODO: return a random subset of an_array with size sample_size
  # example: random_subset(("a".."z").to_a, 4) => ["u", "q", "l", "t"]
end
# puts random_subset(("a".."z").to_a, 4)

def randomize(an_array)
  # a = [ 1, 2, 3 ]           #=> [1, 2, 3]
  # a.shuffle                 #=> [2, 3, 1]
  # a                         #=> [1, 2, 3]
  an_array.shuffle
  # TODO: return a randomized copy of an_array
  # example: randomize([1, 2, 3, 4]) => [2, 1, 4, 3]
end
# puts randomize([1, 2, 3, 4])

def ascending_order(an_array)
  an_array.sort
  # TODO: return a copy of an_array with elements in ascending order
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
  # ary = [ "d", "a", "e", "c", "b" ]
  # ary.sort                     #=> ["a", "b", "c", "d", "e"]
  # ary.sort {|a, b| b <=> a}    #=> ["e", "d", "c", "b", "a"]
end
# puts ascending_order([7, 3, 1, 6, 9])r
