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

    remove = []
    for factor in factors
        for small in a
            if (factor%small) != 0
                remove.append(factor)
            end
        end
    end

    factors = factors - remove

    remove = []
    for factor in factors
        for large in b
            if (large%factor) != 0
                remove.append(factor)
            end
        end
    end

    factors = factors - remove

    size = factors.count
    puts size
    return size

end

getTotalX([2, 6], [24, 36])
getTotalX([2, 4], [16, 32, 96])
getTotalX([3, 7], [42])
getTotalX([3, 7], [42, 63])