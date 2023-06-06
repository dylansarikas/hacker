def divisibleSumPairs(n, k, ar)
    firstIterator = 0
    total = 0
    while firstIterator < (n-1) #doesn't do last one, grabs two
        secondIterator = firstIterator + 1
        while secondIterator < (n)
            #puts "first #{ar[firstIterator]}"
            #puts "second #{ar[secondIterator]}"
            if ((ar[firstIterator] + ar[secondIterator])%k) == 0
                total += 1
            end
            secondIterator += 1
        end
        firstIterator += 1
    end

    puts total
    return total

end

divisibleSumPairs(6, 5, [1, 2, 3, 4, 5, 6])
divisibleSumPairs(6, 3, [1, 3, 2, 6, 1, 2])