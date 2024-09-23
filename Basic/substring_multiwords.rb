def substrings(str_dictionary, text_tobe_searched_in)
    res = {} 
    text_tobe_searched_in.downcase! # Make text_tobe_searched_in lowercase
    str_dictionary.each do |str|
      str_downcased = str.downcase
      matches = text_tobe_searched_in.scan(str_downcased).length # Count all occurrences of str in text_tobe_searched_in
      res[str] = matches if matches > 0 # Only add if there are matches
    end
  
    res
  end
  
  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  
  p substrings(dictionary, "below") # {"below"=>1, "low"=>1}
  p substrings(dictionary, "sit down") # {"down"=>1, "sit"=>1}
  p substrings(dictionary, "Howdy partner, sit down! How's it going?") 
  # {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "partner"=>1, "sit"=>1}
  