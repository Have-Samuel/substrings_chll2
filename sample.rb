dictionary1 = ["below","down","go","going","horn",
              "how","howdy","it","i","low","own",
              "part","partner","sit"]

# ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary1)

{ "below" => 1, "low" => 1 }

substrings1('going', dictionary1)

{ "going" => 1, "go" => 1 }


dictionary2 = ["monkey", "donkey", "key",
               "monkeykey", "keymonkey", "keykey",
               "monkeymonkey", "donkeydonkey",
               "donkeymonkey", "monkeydonkey"]

substrings("monkeykey", dictionary2)
# Why do it return 'keykey' in the result?
# It returns 'keykey' in the result because 'key' is a substring of 'monkeykey' and 'keykey' is a substring of 'monkeykey'
{ "monkey" => 1, "key" => 1, "monkeykey" => 1, "keykey" => 1 }