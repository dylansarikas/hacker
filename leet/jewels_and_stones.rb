def num_jewels_in_stones(jewels, stones)
    stones_tally = stones.chars.tally
    total = 0
    jewels = jewels.split(//)
    for jewel in jewels
        if stones_tally[jewel]
            total += stones_tally[jewel]
        end
    end
    puts total
end

num_jewels_in_stones("aA","aAAbbbb")
num_jewels_in_stones("z","ZZ")