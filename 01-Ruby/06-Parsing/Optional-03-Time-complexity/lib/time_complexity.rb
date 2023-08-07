def find_book(books, book_to_find)
  # TODO: return index of book_to_find in the array of books
  # Use each_with_index
  books.each_with_index do |book, index|
    return index if book == book_to_find
  end
  return nil
end

# Solution with indexes
# rubocop:disable Metrics/MethodLength
def find_book_enhanced(books, book_to_find)
  # TODO: return index of book_to_find in the array of books
  # Use binary search routine
  from = 0
  to = books.length - 1
 
end
