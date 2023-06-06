def staircase(n)
    count = 1
    while count < (n+1)
        #puts('#' * count).rjust(19)
        output = '#' * count
        puts(output.rjust(n))
        count += 1
    end

end

staircase(12)