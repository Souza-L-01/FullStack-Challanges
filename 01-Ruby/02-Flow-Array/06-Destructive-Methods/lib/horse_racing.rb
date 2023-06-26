def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  race_array.reverse!

  race_array.each_with_index { |horse, index| race_array[index] = "#{race_array.length - index}-#{horse}!" }
end
