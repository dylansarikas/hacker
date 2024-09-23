def sort_colors(nums)
    colors = [0,0,0]
    nums.each do |num|
        colors[num] += 1
    end
    
    i = 0
    colors_index = 0
    while colors_index < colors.length
        index = 0
        while index < colors[colors_index]
            nums[i] = colors_index
            index += 1
            i += 1
        end
        colors_index += 1
    end

    p nums
end

sort_colors([2,0,2,1,1,0])
sort_colors([2,0,1])
sort_colors([2,0,1,2,2,2,0])