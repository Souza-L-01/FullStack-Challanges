def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  array1 = array.select do |element|
    size == element.length
  end.sort
  array2 = array.reject do |element|
    size == element.length
  end.sort

  [array1, array2]
  # array_1 = array.select { |element| element.length == size }.sort
  # array_2 = array.select { |element| element.length != size }.sort
  # [array_1, array_2]
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
  array1 = array.select do |element|
    yield(element)
  end.sort
  array2 = array.reject do |element|
    yield(element)
  end.sort

  [array1, array2]
end
