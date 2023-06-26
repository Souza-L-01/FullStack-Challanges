def array_to_hash(array)
  # TODO: implement the method :)
  hash = {}
  array.each_with_index do |element, index|
    if block_given?
      key = yield(index)
    else
      key = index.to_s
    end
    hash[key] = element
  end
  hash
end
