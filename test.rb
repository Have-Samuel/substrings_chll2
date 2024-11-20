str = 'Hello World'

chars = str.chars
# returns ['H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd']
# and for the index => 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
# ['H' => 0, 'e' => 1, 'l' => 2, 'l' => 3, 'o' => 4, ' ' => 5, 'W' => 6, 'o' => 7, 'r' => 8, 'l' => 9, 'd' => 10]

puts chars[6]
# returns 'W'
# What does chars[6] return?
# chars[6] returns 'W'
# What does chars[6, 2] return?
# chars[6, 2] returns ['W', 'o']
# What does chars[7..10] return?
# chars[7..10] returns ['o', 'r', 'l', 'd']
# What does chars[7...10] return?
# chars[7...10] returns ['o', 'r', 'l']
# What does chars[7..-1] return?
# chars[7..-1] returns ['o', 'r', 'l', 'd']
# what does chars[5, str.length - 1] return?
# chars[5, str.length - 1] returns [' ', 'W', 'o', 'r', 'l', 'd']
# What does chars[6, str.length - 1] return?
# chars[6, str.length - 1] returns ['W', 'o', 'r', 'l', 'd']
# What does chars[7, str.length - 1] return?
# chars[7, str.length - 1] returns ['W', 'o', 'r', 'l', 'd']

# Waht does [str.lingth - 1] mean?
# str.length - 1 is the index of the last character in the string, and retutns 10
# What about word = str[7, str.length - 1]?
# word = str[7, str.length - 1] returns 'World' because it starts at index 7 and goes to the end of the string
# Why does str[7, str.length - 1], begin at 'w' and not 'o'?
# str[7, str.length - 1] begins at 'W' because the first argument is the starting index, and the second argument is the length of the substring

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# puts dictionary[2]
# puts dictionary[2, 5]
#  puts dictionary[2..5]
#  puts dictionary[2...5]
 puts dictionary[2..-1]
#  puts dictionary[0, dictionary.length - 1]
#  puts dictionary[3, dictionary.length - 1]
#  puts dictionary[4, dictionary.length - 1]
