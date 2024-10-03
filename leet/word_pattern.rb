def word_pattern(pattern, s)
    map_pattern = pattern.chars.tally
    # puts map_pattern
    string_pattern = s.split(' ').tally
    # puts string_pattern
    ugh = Hash[pattern.chars.zip(s.split(' '))]
    # p ugh
    if map_pattern.keys.length == string_pattern.keys.length
        if map_pattern.values != string_pattern.values then return false end
        pattern_arry = pattern.chars
        string_array = s.split(' ')
        pattern_arry.each_with_index do |value, index|
            if ugh[value] != string_array[index]
                return false
            end
        end
        return true
    else
        return false
    end
end

puts word_pattern("abba", "dog cat cat dog")
puts word_pattern("abba", "dog cat cat dog dog")
puts word_pattern("abba", "dog cat cat fish")
puts word_pattern("aaaa", "dog cat cat dog")
puts word_pattern("abab", "dog cat cat dog")