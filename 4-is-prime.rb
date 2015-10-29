# Assignment: write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
#
# Difficulty: medium.

# MY WORK

def is_prime?(number)

    # "div" is the integer I'm going to divide "number" by.
    # I know that "number" will divide evenly by itself 
    # so I start at one less. 
    div = number - 1

    
    # I use a while loop to cycle through the divisor "div".
    # I subtract by one as I go along, and I don't have to 
    # worry about dividing by 1, so I stop the loop there.
    while div > 1
        
        # If any "div" can divide evenly into "number",
        # "number" must not be a prime. In that case, 
        # the program leaves the loop and returns false.
        if number % div == 0
            return false 
        end 
    
        div = div - 1   
    end

    # if we get through all those divisors and none of them divide evenly
    # into "number" then it must be true that "number" is a prime.
    return true

end

# END OF MY WORK



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)
