def str_str(haystack, needle)
    output = -1
    index = 0

    while index < haystack.length
        if haystack[index] == needle[0]
            #puts haystack[index, needle.length]
            if haystack[index, needle.length] == needle
                output = index
                return output
            end
        end
        index += 1
    end
    return output
end

puts str_str("sadbutsad", "sad")
puts str_str("leetcode", "leeto")
puts str_str("hello", "ll")