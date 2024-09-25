# Ruby Projects
Intends to cover programming fundament ruby projects.
## 1. Basic
- [Caesar Cipher](https://github.com/Muhammad-Taha-Qader/Ruby/blob/main/Basic/Caesar_Cipher.rb)
    This Ruby method, `caesar_cipher`, implements a Caesar cipher, which shifts each letter in a given string by a specified number of positions in the alphabet. Non-alphabetic characters remain unchanged. The method handles both uppercase and lowercase letters, wrapping around the alphabet when necessary. For example, shifting "z" by 3 results in "c".
- [Sub Strings](https://github.com/Muhammad-Taha-Qader/Ruby/blob/main/Basic/substrings.rb)
- [Sub Strings Multiwords](https://github.com/Muhammad-Taha-Qader/Ruby/blob/main/Basic/substring_multiwords.rb)
    
    Write a method `substrings(dictionary, text)` that returns a hash with the count of how many times each word in the `dictionary` appears as a substring in `text`. The search should be case-insensitive, and only words that occur in the `text` should be included in the result. Each occurrence should be counted, even if it's part of a longer word.
    
    Example:
    
    For the dictionary `["how", "it", "sit"]` and text `"How's it going? Sit down!"`, the result should be:
    
    `{ "how" => 1, "it" => 2, "sit" => 1 }`
- [Stock Picker](https://github.com/Muhammad-Taha-Qader/Ruby/blob/main/Basic/stock_picker.rb)
    
    A Ruby method `#stock_picker` that takes an array of stock prices and returns the best pair of days to buy and sell for maximum profit. The function ensures that the buy day is before the sell day and handles edge cases like when the lowest price is on the last day or the highest price is on the first day.

    Example:
    ```ruby
    stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
    # => [1, 4]  # Profit: $12
    ```
- [Bubble Sort](https://github.com/Muhammad-Taha-Qader/Ruby/blob/main/Basic/bubble_sort.rb)