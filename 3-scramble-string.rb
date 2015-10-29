# Assignment: Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

# MY WORK

def scramble_string(string, positions)
  
  # an empty string to insert the scrambled letters into
  scramble = ""
  # I found it easer to process the array of index numbers
  # as a string
  pos_string = positions.join("")
  idx = 0

  
  while idx < positions.length
    # this so I can enter in the actual numbers from 
    # the string of numbers
    pos = pos_string[idx].to_i
    
    # add the letter at the string position given by "pos"
    scramble = scramble + string[pos]
      
    idx += 1   
      
    
      
  end    
      
      
  return scramble 


end


# END OF MY WORK


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
  (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s)
puts(
  'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
  (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s)
