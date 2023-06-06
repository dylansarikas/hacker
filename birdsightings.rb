def migratoryBirds(arr)
    # sorted = arr.dup.sort
    birds = arr.uniq.sort
    #p arr
    most_common = 0
    largest = 0
    for bird in birds
        sorted = arr.dup.sort
        sorted.delete(bird)
        #p sorted
        sighted = arr.length - sorted.length
        if sighted > largest
            #p "here"
            largest = sighted
            most_common = bird
        end
    end

    p most_common
    return most_common

end

migratoryBirds([1,4,4,4,5,3])
migratoryBirds([1,1,2,2,3])