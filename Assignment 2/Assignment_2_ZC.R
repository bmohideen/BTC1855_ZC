#Well done on including the R Version and date that the code was last updated

#' BTC1855 - Assignment 2, Zachery Chan
#' R version: Version 2024.04.2+764 (2024.04.2+764)
#' Code dated to: June 14th

#Great job explaining why you've used readline instead of scan

# Taking user input using readline(), didnt use scan() as scan() 
# specifies file path while readline() just goes through console commands
user_input <- readline(prompt = "Hey, play a game with me? Think of 3, single-digit, positive numbers and put'em together. Enter your number here please: ")

#----------------------------------------

# Please input your number here now through the console 

#---------------------------------------

#Creating a new variable to store as the numeric user input is smart
#It's allowed you to use the user_input character form to check length
#with strsplit later on, instead of unnecessary conversion back and forth
#between numeric and character form, so well done

#' Now converting user input to numeric to compare
user_numeric <- as.numeric(user_input)

#Great job on using a logical OR statement to combine the conditions
#I like how you used /n to print the messages on different lines as well
#Adding in "stop" is great as well, because we were instructed to exit if the 
#entered value was not valid. In my own code, I just used "else" to terminate,
#but thanks for showing me that "stop" is a better way to go about it

# Using if() and logical OR statement to combine conditions 
if (is.na(as.numeric(user_input)) == T | user_numeric <= 0) {
  #If input is not numeric OR if input is negative OR is "000" (0 is not a positive number), then
  stop ("ERROR! ERROR! THAT DOES NOT FOLLOW THE INSTRUCTIONS, SILLY! \n That is not a set of positive numbers \n See any NA warnings? I was forced to do this :( \n Run it again and please put in a number, I will be watching...")
} 

#Great job on explaining that strsplit uses characters

#' Splitting user input into 3 numbers (uses character string as 
#' strsplit() uses characters not strings)
split_input <- strsplit(user_input, "")

input_string <- split_input[[1]]

#You could have added in a comment explaining why this was 
#necessary, because I wasn't sure at first

number_length <- length

#This works well for checking numbers greater than 3 digits, but it
#should also check for numbers less than 3 digits with an "else" 
# statement for length < 3

# Checking to see if number is 3 digits
if (length(input_string) > 3) {
  # Checking to see if length of list from user input is number is greater than 3 
  # digits using logical 
  stop ("ERROR! ERROR! THAT IS A NOT A 3 DIGIT NUMBER, SILLY! \n Please follow the instructions this time. \n Run it again and please put in a number, I will be watching...")
} 

#Duplicate line, could be removed

# Seperating the elements from list to calculate armstrong
first_number <- as.numeric(input_string)

#Good job with subsetting the input string to get the 1st, 2nd, and 3rd number
#This is an efficient way to go about it

# Seperating the elements from list to calculate armstrong
first_number <- as.numeric(input_string[1])

second_number <- as.numeric(input_string[2])

third_number <- as.numeric(input_string[3])

#Props to you for combining all the calculations in 1 line

#'Calculating if input is an Armstrong number or not
armstrong <- first_number^3 + second_number^3 + third_number^3

#Comments are clear, and pasted messages are creative as well
#I understood all of your code well, because you explained 
#each line clearly
#Great job on the assignment overall
#Your code is all concise, clear, logically sound, and well-written

#' Using conditional to determine if the number is an armstrong number and 
#' which message is given
if (user_numeric == armstrong ) {
  #If user input matches the armstrong calculation, then
  print (paste(user_input, "is a narcissistic number, you self-lover you :). Now either go look at your reflection in a lake ;)"))
 } else {
   #If it does not match, then
    print (paste(user_input, "is a NOT a narcissistic number. Maybe we should talk about your self image?"))
}
