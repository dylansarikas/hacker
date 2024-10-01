def is_anagram(s, t)
    if s.split(//).sort == t.split(//).sort then return true else return false end
end

puts is_anagram("anagram", "nagaram")
puts is_anagram("rat", "car")