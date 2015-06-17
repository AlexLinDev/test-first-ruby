def translate(str)
    sentence = str.split(" ").map! {
        |x| length = x.length
        qu_index = first_qu(x).to_i
        vowel_index = first_vowel(x).to_i
        puts qu_index
            if qu_index < vowel_index
                	x[qu_index+2..length-1] + x[0..qu_index+1] + "ay"
            elsif
            	vowel_index == 0
            	x.to_s + "ay"
            else
            	x[vowel_index..length-1] + x[0..vowel_index-1] + "ay"
            end
    }
    sentence = sentence.join(" ")
end

def first_vowel(str)
    vowel_index =  /[aeiou]/ =~ str
end

def first_qu(str)
	qu_index = /qu/ =~ str
	if qu_index.to_i < 2 && qu_index != nil
		return qu_index
	else
		return str.length
	end
end