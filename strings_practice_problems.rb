# 1. Write a program that uses variables to store a first and last name, then prints the full name in one line using string concatenation (the + operator).

first_name = "Brandon"
last_name = "Lin"

puts full_name = first_name + " " + last_name

# 2. Write a program that uses variables to store a first and last name, then prints the full name in one line using string interpolation (the #{} operator).

first_name = "Brandon"
last_name = "Lin"
puts full_name = "#{first_name} #{last_name}"

# 3. Write a program that asks the user to input a word. If the word is "marco", print "polo".

puts "input a word"
word = gets.chomp

if word == "marco"
  puts "polo"
end

# 4. Write a program that uses variables to store three different colors, then prints out a sentence using the colors with string concatenation (the + operator).

c1 = "red"
c2 = "green"
c3 = "blue"

puts c1 + " " + c2 + " " + c3

# 5. Write a program that uses variables to store three different colors, then prints out a sentence using the colors with string interpolation (the #{} operator).

c1 = "red"
c2 = "green"
c3 = "blue"

puts "#{c1} #{c2} #{c3}"

# 6. Write a program that asks the user to enter a name. If the name is not "Santa", print "You're not Santa."

puts "enter a name:"
name = gets.chomp

if not name == "Santa"
  puts "You're not Santa."
end

# 7. Write a program that uses variables to store a book's title and author, then prints out a sentence using that information with string concatenation (the + operator).

title = "Harry Potter"
author = "J.K. Rowling"

puts title + " was written by " + author

# 8. Write a program that uses variables to store a book's title and author, then prints out a sentence using that information with string interpolation (the #{} operator).

title = "Harry Potter"
author = "J.K. Rowling"

puts "#{title} was written by #{author}."

# 9. Write a program that asks the user to enter a password. If the password is "Joshua", the program responds "Shall we play a game?". For any other password, the program responds "Access denied"

puts "Enter a password:"
pw = gets.chomp

if pw == "Joshua"
  puts "Shall we play a game?"
else
  puts "Access denied"
end

# 10. Write a program that uses variables to store the names of three cities, then prints out a sentence using that information with string concatenation (the + operator).

c1 = "Chicago"
c2 = "New York"
c3 = "Los Angeles"

puts c1 + ", " + c2 + ", and " + c3 + " are the three most populous cities in the United States."
