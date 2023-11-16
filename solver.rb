class Solver
    def factorial(n)
        if(n<0)
            raise ArgumentError, "Input must be non-negative integer"
        elsif (n == 0)
        1
        else
            n*factorial(n-1)
        end
    end

    def reverse(word)
        word.reverse
    end
end