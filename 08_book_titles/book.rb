class Book

	def initialize
		@title = "New Book"
	end

	def title
		@title
	end

	def title=(str)
		@title = title_cap(str)
	end

	def title_cap(str)
		words = str.split(" ")
		words.each do |x|
			unless ["the", "a", "an", "and", "in", "of"].include?(x)
				x.capitalize!
			end
		end
		words[0].capitalize!
		words.join(" ")
	end
end