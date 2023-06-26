# NOTE: Read about BasicObject#object_id
# https://ruby-doc.org/core-2.7.5/BasicObject.html#method-i-__id__
# You can try launching `irb` to test some values
# irb> :foo.object_id
# irb> :foo.object_id
# irb> "foo".object_id
# irb> "foo".object_id
def are_identical_symbols_same_objects?
  # TODO: Answer the question by making this method to return true or false
  # symbol1.equal?(symbol2)
  true
end
# puts are_identical_symbols_same_objects?(:foo, :foo)

def are_identical_strings_same_objects?
  # TODO: Answer the question by making this method to return true or false
  # string.equal?(string2)
  false
end
# puts are_identical_strings_same_objects?("Lucas", "Lucas")
# Remember, RTFM! Your doc is your friend
# - https://ruby-doc.org/core-2.7.5/String.html
# - https://ruby-doc.org/core-2.7.5/Symbol.html

def convert_string_to_symbol(a_string)
  # TODO: return the symbol version of the parameter `a_string` passed to this method
  a_string.to_sym
end
# p convert_string_to_symbol("a_string")

def convert_symbol_to_string(a_symbol)
  # TODO: return the string version of the parameter `a_symbol` passed to this method
  a_symbol.to_s
end
# p convert_symbol_to_string(:a_symbol)

def me
  # TODO: return a Hash representing yourself, with keys such as age and name
  {
    name: "Lucas",
    age: 32
  }
end

def fruits
  # TODO: return an array of fruits
  ["Apple", "Banana"]
end
