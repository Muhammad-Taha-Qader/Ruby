def caesar_cipher(str, shift) 
    str2 = (str.split("").map{ |char| 
        next char unless (('a'..'z').include?(char) || ('A'..'Z').include?(char)) #next act as return for that itertion keepinf the map loop on
        p (((char.ord + shift) > 'z'.ord && (char =~ /[a-z]/)) || ((char.ord + shift) > 'Z'.ord && (char =~ /[A-Z]/)))?   
            (char.ord + shift - (26) ).chr   
            : (char.ord + shift).chr 
    })
    str2.join
end

p caesar_cipher("a,5xyzXY--Aaz",3)

