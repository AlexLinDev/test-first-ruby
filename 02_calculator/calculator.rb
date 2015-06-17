def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(stuff=[])
	if stuff.length == 0
		return 0
	else
		return stuff.reduce(:+)
	end
end