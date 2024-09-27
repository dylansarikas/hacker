def min_eating_speed(piles, h)
    low = 1
    high = piles.max
    result = high

    while low <= high
        k = (low + high) / 2
        hours = 0
        piles.each do |pile|
            hours += (pile.to_f / k).ceil
        end

        if hours <= h
            result = [result, k].min
            high = k - 1
        else
            low = k + 1
        end
    end
    return result
end

puts min_eating_speed([3,6,7,11], 8)
puts min_eating_speed([30,11,23,4,20], 5)
puts min_eating_speed([30,11,23,4,20], 6)