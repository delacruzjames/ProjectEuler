# while loop
# The condition which is to be tested, given at the beginning of the loop and all statements are executed until
# the given boolean condition satisfies. When the condition becomes FALSE, the control will be out from the while loop.
# It is also known as Entry Controlled Loop because the condition to be tested is present at the beginning of the loop body.
# So basically, while loop is used when the number of iterations is not fixed in a program.

# Example:
# Ruby program to illustrate 'while' loop
# variable x
x = 4
# using while loop
# here condtional is x i.e. 4
while x >= 1
# statements to be executed
  puts "GeeksforGeeks"
  x = x - 1
# while loop ends here
end


# for loop
# “for” loop has similar functionality as while loop but with different syntax.
# for loop is preferred when the number of times loop statements are to be executed is known beforehand.
# It iterates over a specific range of numbers. It is also known as Entry Controlled Loop because the condition to be tested
# is present at the beginning of the loop body.

# Example
# Ruby program to illustrate 'for'
# loop using array  as expression
# array
arr = ["GFG", "G4G", "Geeks", "Sudo"]
# using for loop
for i in arr do
 puts i
end


# do while loop
# do while loop is similar to while loop with the only difference that it checks the condition after executing
# the statements, i.e it will execute the loop body one time for sure. It is a Exit-Controlled loop because it tests
# the condition which presents at the end of the loop body.

# Example
# Ruby program to illustrate 'do..while'loop

# starting of do..while loop
loop do
 puts "GeeksforGeeks"
 val = '7'
 # using boolean expressions
 if val == '7'
  break
 end
# ending of ruby do..while loop
end


# until loop
# Ruby until loop will executes the statements or code till the given condition evaluates to TRUE.
# Basically it’s just opposite to the while loop which executes until the given condition evaluates to FALSE.
# An until statement’s conditional is separated from code by the reserved word do, a newline, or a semicolon.

# Example
# Ruby program to illustrate 'until' loop
var = 7
# using until loop
# here do is optional
until var == 11 do
  # code to be executed
  puts var * 10
  var = var + 1
# here loop ends
end
