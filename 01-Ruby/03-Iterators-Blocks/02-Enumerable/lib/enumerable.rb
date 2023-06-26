def sum_odd_indexed(array)
  # TO DO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  # You should use Enumerable#each_with_index
  sum = 0
  array.each_with_index do |element, index|
    sum += element if index.odd?
  end
  sum
end

def even_numbers(array)
  # TO DO: Return the even numbers from a list of integers.
  # You should use Enumerable#select
  array.select do |i|
    i.even?
  end
end
# tester = [1, 2, 4]
# p even_numbers(tester)

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  # You should use Enumerable#reject
  array.reject do |word|
    word.length > max_length
  end
end
# array = ["Mac", "Lucas"]
# p short_words(array,3)

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  # array.find {|i| i < limit}
  array.find do |i|
    i < limit
  end
end
# array = [4, 6, 8]
# p first_under(array,8)

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  # You should use Enumerable#map
  # array.map {|i| i + "!"}
  array.map { |i| "#{i}!" }
end
# array = ["Lucas", "Souza"]
# p add_bang(array)

def concatenate(array)
  # TO DO: Concatenate all strings given in the array.
  array.reduce do |string, index|
    string + index
  end
end
# array = ["Lucas", "Souza"]
# p concatenate(array)

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  # You should use Enumerable#each_slice
  array.each_slice(2).map { |pair| pair.sort }
end
# array = ["Souza", "Lucas"]
# p sorted_pairs(array)
