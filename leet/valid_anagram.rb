def is_anagram(s, t)
    # s.chars.tally == t.chars.tally
    if s.split(//).sort == t.split(//).sort then return true else return false end
end

puts is_anagram("anagram", "nagaram")
puts is_anagram("rat", "car")