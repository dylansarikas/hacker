def larger(nums)
    output = 0
    counter = 0
    while counter < nums.length
        first = nums[counter]
        counter_two = counter + 1
        while counter_two < nums.length
            second = nums[counter_two]

            if first < second && ((second - first) > output)
                output = second - first
            end
            counter_two += 1
        end

        counter += 1
    end
    puts output
end

larger([2,3,10,6,4,8,1])
larger([4,3,1])