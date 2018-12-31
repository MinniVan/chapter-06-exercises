# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1, string2){
	length_of_string1 <- nchar(string1)
	length_of_string2 <- nchar(string2)
	if (length_of_string1 == length_of_string2){
		return("The two strings are the same in length")
	}

	if (length_of_string1 < length_of_string2){
		shorter_string <- string1
		longer_string <- string2
	}else {
		shorter_string <- string2
		longer_string <- string1
	}
	short_string_length <- nchar(shorter_string)
	long_string_length <- nchar(longer_string)
	result <- long_string_length >= short_string_length*2 
	result
}


# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("ads", "sda") # The two strings are the same in lenghth
is_twice_as_long("adadafdsa", "das") # TRUE
is_twice_as_long("ads", "ddfdsfdsas") # TRUE
is_twice_as_long("adadafdsa", "daadafad") # FALSE
is_twice_as_long("adaa", "ddadaas") #FALSE


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2){
	string1_length <- nchar(string1)
	string2_length <- nchar(string2)
	
	if(string1_length == string2_length){
		return ("Your strings are the same length")
	}
	if(string1_length > string2_length){
		greater_by <- '-'( string1_length, string2_length)
		result <- paste("Your first string is longer by", greater_by, "characters")
	} else {
		greater_by <- '-'(string2_length, string1_length)
		result <- paste("Your secound string is longer by", greater_by, "characters")
	}
	result
}


# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("Luckiest", "Luckiest")
describe_difference("Van Tha Bik Lian", "Luckiest")
describe_difference("Luckiest", "Van Tha Bik Lian")

