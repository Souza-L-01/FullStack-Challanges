class View
	def display(posts)
		posts.each_with_index do |post, i|
			status = post.read? ? "[x]" : "[ ]"
			puts "#{i + 1}. #{status} - #{post.title} (#{post.author})"
		end
	end

	def ask_user_for(stuff)
		puts "#{stuff.capitalize}?"
		print "> "
		return gets.chomp
	end

end