def palindrome?(string)
    fixed = string.gsub(/[^0-9a-z ]/i, '').gsub(/\s+/, "").downcase
    beg = 0
    last = -1
    output = true
    while beg < fixed.length
        if fixed[beg] != fixed[last]
            output = false
            break
        end
        beg += 1
        last -= 1
    end
    return output

end

palindrome?("A man, a plan, a canal: Panama")
palindrome?("race car")
palindrome?("race a car")
palindrome?("No lemon, no melon")