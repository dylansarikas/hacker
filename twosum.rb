def two_sum(nums, target)
    first = nil
    second = nil
    duplicate = false
    nums.each do |num|
        check = target - num
        # p check
        check_array = nums.dup
        check_array.delete_at(nums.index(num))
        # p check_array
        # p nums
        if check_array.include?(check)
            # puts "here"
            # puts num
            # puts check
            first = nums.index(num)
            second = nums.index(check)
            if check == num
                second = check_array.index(check) + 1
            end
            break
        end
    end
    answer = []
    answer.push(first)
    answer.push(second)
    p answer
    return answer
end

def two_sum_good(nums, target)
    num_indices = {}

  nums.each_with_index do |num, index|
    complement = target - num
    puts index
    if num_indices.key?(complement)
      puts [index, num_indices[complement]]
      return [index, num_indices[complement]]
    end

    num_indices[num] = index
  end
  nil
end


# two_sum([2,7,11,15], 9)
# two_sum([3,2,4], 6)
# two_sum([3,3], 6)
# two_sum([3,2,3], 6)

two_sum_good([2,7,11,15], 9)