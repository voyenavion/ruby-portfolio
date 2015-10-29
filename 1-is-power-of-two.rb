# Assignment: Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.

# MY WORK

def is_power_of_two?(num)
   
    # Because 2^0 = 1
    # return true for 1
    if num == 1 
        return true
    end
   
    # if it isn't even
    # it can't be a power of 2
    if num % 2 != 0
        return false
    end 
    
    
    # This loop runs if num is even and 
    # greater or equal to 2
    while (num % 2 == 0) && (num >= 2)
        
        
        # The crux of the program is in two conditionals
        # below. If the number passed into the method IS
        # a power of 2, if we keep on dividing it
        # by 2 it will eventually equal 2. The elsif 
        # here will keep on dividing it by 2, and the if
        # will return true and exit the loop when num equals 2.
        if (num % 2 == 0) && (num == 2) 
            return true
        
        elsif (num % 2 == 0)
            num = num / 2 
        else
            return false
        end 
    
    end 
    
    return false 
    
end


# END OF MY WORK

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
