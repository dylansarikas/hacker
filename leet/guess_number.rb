def guessNumber(n)
    low, high = 1, n
    while true
        middle = (low + high) / 2
        result = guess(middle)
        if result == 1
            low = middle + 1
        elsif result == -1
            high = middle - 1
        else
            return middle
        end
    end
end