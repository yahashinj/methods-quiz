module MethodsQuiz
	
	# TODO - write has_teen?
	def has_teen?(age)
		if age <= 19 && age >= 13
			return true
		else
			return false
		end
	end
	# TODO - write not_string
	def not_string(string)
		return "not " + string 
	end
	# TODO - write icy_hot?
	def icy_hot(temp1, temp2)
		if temp1 > 100 && temp2 < 0
			return true
		elsif temp1 < 0 && temp2 > 100
			return true
		else 
			return false
		end
	end
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end