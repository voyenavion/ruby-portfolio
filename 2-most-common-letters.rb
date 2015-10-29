# Assignment: Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.


# MY WORK

def most_common_letter(string)
  
  
  idx = 0
  # current tally
  tally = 1  
  # previous greatest tally
  bean = 1
 
  
  # Outer loop to go through letters in the string.
  while idx < string.length  
    tally = 1 
    idy = idx + 1 
    
    # Inner loop to compare one letter to the letters ahead
    # of it, checking for matches. 
    while idy < string.length
      
      # Every time another appearance of the same letter is found,
      # tally gets plus one. 
      if string[idx] == string[idy]
        tally += 1
      end
      
      idy += 1 
    
    end
    
    # This compares current tally ("tally") 
    # to the previous greatest tally ("bean")
    # if there is a new greatest tally,
    # the corresponding letter is marked as 
    # the most common letter, known as "king_letter"
    if tally > bean 
      bean = tally 
      king_letter = string[idx]
    end
    
    idx += 1 
  end  
  
  puts(king_letter)
  puts(bean)
  
  return [king_letter, bean]

end


# END OF MY WORK


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
