def merge(nums1, m, nums2, n)
    if n == 0
        return nums1
    end

    last = nums1.length - 1
    second = n - 1
    while last >= m
        nums1[last] = nums2[second]
        last -= 1
        second -= 1
    end

    p nums1

    nums1.each_with_index do |num, i|
        compare = i - 1
        while (compare >= 0 and nums1[compare+1] < nums1[compare])
            temp = nums1[compare+1]
            nums1[compare+1] = nums1[compare]
            nums1[compare] = temp
            compare -= 1
        end
    end

    p nums1

end

# puts merge([1], 1, [], 0)
# puts merge([0], 0, [1], 1)
merge([1,2,3,0,0,0], 3, [2,5,6], 3)

merge([0,0,0,0,0], 0, [1,2,3,4,5], 5)