# a = [36, 16, 96]
# puts a.min

def getTotalX(a, b)
    highestFirst = a.max
    lowestSecond = b.min
    distance = highestFirst
    total = 0
    factors = []
    while distance <= lowestSecond
        factors.append(distance)
        distance += highestFirst
    end

    #p factors

    remove = []
    for factor in factors
        #puts "factor #{factor}"
        for small in a
            #puts "small #{small}"
            if (factor%small) != 0
                #puts "meow"
                remove.append(factor)
            end
        end
    end

    factors = factors - remove

    #p factors

    remove = []
    for factor in factors
        #puts "factor #{factor}"
        for large in b
            #puts "small #{small}"
            if (large%factor) != 0
                #puts "meow"
                remove.append(factor)
            end
        end
    end

    factors = factors - remove

    #p factors
    # Write your code here
    size = factors.count
    puts size
    return size

end

getTotalX([2, 6], [24, 36])
getTotalX([2, 4], [16, 32, 96])
getTotalX([3, 7], [42])
getTotalX([3, 7], [42, 63])