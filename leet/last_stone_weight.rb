def last_stone_weight(stones)
    while stones.length > 1
        first = stones.max
        stones.delete_at(stones.index(stones.max))
        second = stones.max
        stones.delete_at(stones.index(stones.max))
        if first - second != 0
            stones.push((first - second).abs)
        end    
    end

    if stones == []
        stones.push(0)
    end

    return stones[0]
end

p last_stone_weight([2,7,4,1,8,1])
p last_stone_weight([1])
p last_stone_weight([1, 1])