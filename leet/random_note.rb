def can_construct(ransom_note, magazine)
    clippings = Hash.new(0)
    magazine.each_char do |letter|
        if clippings[letter]
            clippings[letter] += 1
        end
    end
    ransom_note.each_char do |letter|
        if clippings[letter]
            clippings[letter] -= 1
            if clippings[letter] < 0
                return false
            end
        end
    end
    return true
end

puts can_construct("a", "b")
puts can_construct("aa", "ab")
puts can_construct("aa", "aab")
puts can_construct("ac", "aab")