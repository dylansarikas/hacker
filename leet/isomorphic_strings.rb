def is_isomorphic(s, t)
    # s.chars.map{ |c| s.index(c) } == t.chars.map{ |c| t.index(c) }
    first_pattern = s.chars.tally
    second_pattern = t.chars.tally
    combo = Hash[s.chars.zip(t.chars)]

    if first_pattern.keys.length == second_pattern.keys.length
        if first_pattern.values != second_pattern.values then return false else end
        first_array = s.chars
        second_array = t.chars
        first_array.each_with_index do |value, index|
            if combo[value] != second_array[index]
                return false
            end
        end
        return true
    else
        return false
    end
end

puts is_isomorphic("egg", "add")
puts is_isomorphic("foo", "bar")
puts is_isomorphic("paper", "title")
