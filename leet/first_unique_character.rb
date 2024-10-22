def first_uniq_char(s)
    output = -1
    chars = s.chars.tally
    chars.each do |k, v|
        if v == 1
            output = s.index(k)
            return output
        end
    end
    
    return output
end

puts first_uniq_char("leetcode")
puts first_uniq_char("loveleetcode")
puts first_uniq_char("aabb")
