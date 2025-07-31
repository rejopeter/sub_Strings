# Declare an array called dictionary with the given strings
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# Declare a method called substrings which accepts 2 inputs, an array and a string
def substring(text, array)
  # Initialise a hash
	result = Hash.new(0)
  # Make everything lowercase and split
	words = text.downcase.split
	# compare both arrays
	words.each do | word |
		dictionary.each do | item |
			if word.include?(item.downcase)
        # count items with match values
				result[item.downcase] += 1
			end
		end
	end
	# return the result
	result
end
# Call the method for a word
p substrings("below", dictionary)
# Call the method for a sentance
p substrings("Howdy partner, sit down! How's it going?", dictionary)