def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, num=2)
	("#{str} " * num).chop
end

def start_of_word(str, num)
	str[0, num]
end

def first_word(str)
	str.split(" ")[0]
end

def titleize(str)
    little_words = ["a", "an", "and", "the", "over"]
    words = str.split(" ").map! { 
    	|x| if little_words.include? x
            	x
            else
                x.capitalize
            end
    }
    words[0].capitalize!
    words.join(" ")
end