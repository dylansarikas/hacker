def breakingRecords(scores)
    min = scores[0]
    max = scores[0]
    best = 0
    worst = 0
    total = []
    for score in scores
        if score < min
            worst += 1
            min = score
        elsif score > max 
            best += 1
            max = score
        end
    end

    total.append(best).append(worst)
    p total
    return total

end

breakingRecords([12, 24, 10, 24])
breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42])
breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1])