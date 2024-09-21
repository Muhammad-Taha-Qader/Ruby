def caesar_cipher(str, shift) 
    str2 = (str.split("").map{|char| p (char.ord + shift).chr})
    str2.join
end

p caesar_cipher("abc",3)