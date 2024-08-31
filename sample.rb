# dictionary1 = ["below","down","go","going","horn",
#               "how","howdy","it","i","low","own",
#               "part","partner","sit"]

# # ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# substrings("below", dictionary1)

# { "below" => 1, "low" => 1 }

# substrings1('going', dictionary1)

# { "going" => 1, "go" => 1 }


# dictionary2 = ["monkey", "donkey", "key",
#                "monkeykey", "keymonkey", "keykey",
#                "monkeymonkey", "donkeydonkey",
#                "donkeymonkey", "monkeydonkey"]

# substrings("monkeykey", dictionary2)
# # Why do it return 'keykey' in the result?
# # It returns 'keykey' in the result because 'key' is a substring of 'monkeykey' and 'keykey' is a substring of 'monkeykey'
# { "monkey" => 1, "key" => 1, "monkeykey" => 1, "keykey" => 1 }

# # Make sure you method can handle multiple words
# dictionary3 = ["marcedes", "benz", "marcedesbenz",
#               "benzmarcedes", "marcedesmarcedes",
#               "benzbenz", "benzmarcedes", "marcedesbenz",
#               "benzbenzbenz", "marcedesmarcedesmarcedes"]

# substrings("marcedesbenz", "benzmarcedes", "marcedesbenz", dictionary3)
# # Why does it return 'marcedesbenz' in the result?
# { "marcedes" => 2, "benz" => 2, "marcedesbenz" => 2, "benzmarcedes" => 2 }

dictionary4 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings4(str, dictionary4)
  str.downcase
  str_arr = str.split
  match_arr = []
  count_arr = []

  dictionary4.each do |i|
    if str_arr.any? { |s| s.include?(i) }
     match_arr.push(i)
    # str_arr.each do |j|
    #   # Code below checks if the substring is included in the string
    #   if j.include?(i)
    #     # Code below pushes the substring into the match_arr
    #     match_arr.push(i)
      end
      count = str_arr.count { |s| s.include?(i) }
      # Code below pushes the count of the substring into the count_arr
      count_arr.push(count)
      # Code below removes zeros from the count_arr
      count_arr.delete(0)
    end

    # Final result is a hash made from two equal length arrays, match_arr and count_arr
    # where one array is the key and the other is the value
    # this is a convenient shorthand for creating a hash - Thanks to Ruby
    # The ZIP method is used to combine the two arrays into a single array of arrays
    # result = Hash[match_arr.zip(count_arr)].to_h
    # to_h method is used to convert the array of arrays into a hash
    result = match_arr.zip(count_arr).to_h

    puts "These are the substrings from the dictionalry that match the string: #{match_arr}"
    puts "These matches appear in the string this many times: #{count_arr}"
    puts "The final result is: #{result}"
  end

substrings4("below", dictionary4)
substrings4("Howdy partner, sit down! How's it going?", dictionary4)

