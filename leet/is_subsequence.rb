def is_subsequence(s, t)
    first = 0
    second = 0
    correct = 0
    while second < t.length && first < s.length
        if s[first] == t[second]
            first += 1
            second += 1
        else
            second += 1
        end
    end
    if first == s.length then return true else return false end
end

puts is_subsequence("abc", "ahbgdc")
puts is_subsequence("axc", "ahbgdc")