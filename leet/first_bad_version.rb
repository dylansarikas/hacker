def first_bad_version(n, g)
    if is_bad_version(1, g) == true
        puts "low"
        return 1
    end
    # if is_bad_version(n, g) == true
    #     puts "high"
    #     return n
    # end
    low, high = 1, n
    while true
        middle = (low + high) / 2
        # puts middle
        # sleep(1)
        result = is_bad_version(middle, g)
        if result == true
            if is_bad_version(middle - 1, g) == false
                return middle
            else
                high = middle - 1
            end
        elsif result == false
            if is_bad_version(middle + 1, g) == true
                return middle + 1
            else
                low = middle + 1
            end
        end
    end
end

def is_bad_version(middle, g)
    if middle >= g
        return true
    else
        return false
    end
end

puts first_bad_version(5, 4)
puts first_bad_version(4, 4)
# puts first_bad_version(3, 1)
