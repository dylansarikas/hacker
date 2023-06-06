def birthday(s, d, m)
    # Write your code here
    month = 0
    total = 0
    day = []
    while month < s.count
        #puts "blob"
        if (month + 1) < s.count || m == 1 #doesn't search past end of bar
            #puts"whoopsie"
            #for loop for d
            length = 0
            while length < m
                #puts "oops"
                if (month + length) < s.count #doesn't search past end of bar
                    #puts "here: #{s[(month + day.count)]}"
                    day.append(s[(month + length)])
                end
                length += 1
            end
            #puts "stop"
            #day.append(s[month])
            #day.append(s[(month + 1)])
            #puts day.sum
            if day.sum == d
                total += 1
            end
        end
        month += 1
        day = []

    end

    #puts "total is: #{total}"
    puts total
    return total


end

birthday([2, 2, 1, 3, 2], 4, 2)
birthday([1, 2, 1, 3, 2], 3, 2)
birthday([1, 1, 1, 1, 1], 3, 2)
birthday([4], 4, 1)
birthday([2, 5, 1, 3, 4, 4, 3, 5, 1, 1, 2, 1, 4, 1, 3, 3, 4, 2, 1], 18, 7)