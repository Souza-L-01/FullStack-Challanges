def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  # The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  open_tag = "<#{tag_name}"
  close_tag = "</#{tag_name}>"

  if attributes
    attr_name, attr_value = attributes
    open_tag = "<#{tag_name} #{attr_name}=\"#{attr_value}\""
  end

  # content = yield if block_given?
  "#{open_tag}>#{yield if block_given?}#{close_tag}"
end
