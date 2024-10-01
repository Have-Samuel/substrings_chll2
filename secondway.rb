dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
  result = {}
  str_arr = str.downcase.split
  str_arr.each do |word|
    dictionary.each do |s|
      if word.include?(s)
        if result.has_key?(s)
          result[s] += 1
        else
          result[s] = 1
        end
      end
  end
end
puts result
end
substrings("Howdy partner, sit down! How's it going?", dictionary)
substrings("below", dictionary)
substrings("below low low cuthbert belows his ownership hornbills", dictionary)