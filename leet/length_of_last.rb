def length_of_last_word(s)
    fixed = s.split
    if fixed == []
        return 0
    else
        return fixed[-1].length
    end
end

puts length_of_last_word("Hello World")
puts length_of_last_word("   fly me   to   the moon  ")
puts length_of_last_word("luffy is still joyboy")
puts length_of_last_word("")
puts length_of_last_word("a")