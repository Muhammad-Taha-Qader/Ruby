def substrings(str_dictionary, filter)
    res = {}
    #--1st thought:
    # temp = str_dictionary.map{ |str|
    #     (filter.include?(str))? str : nil
    # }
    # if(temp)
    #     (res[temp])? res[temp]+=1 : res[temp]=1
    # end
    #--2nd:
    str_dictionary.each{ |str|
        (filter.include?(str))? ((res[str])? res[str]+=1 : res[str]=1) : nil
    }
    return res

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings(dictionary, "below")
p substrings(dictionary, "sit down")